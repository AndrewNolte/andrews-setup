#!/bin/bash -e

# This script MUST be run with 'sudo' (e.g., sudo ./install.sh)
if [ "$EUID" -ne 0 ]; then
  echo "Please run this script with sudo."
  exit 1
fi

# Define variables
SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
PLIST_FILE="com.local.kmonadStartup.plist"
PLIST_PATH="/Library/LaunchDaemons/$PLIST_FILE"
STARTUP_SCRIPT="/usr/local/bin/kmonadStartup.sh"
KMONAD_CONFIG_DIR="/var/root/.config/kmonad" # Daemon config location

echo "--- Preparing Kmonad Installation ---"

# 1. Find the ABSOLUTE paths for executables
echo "Locating kmonad executables..."
KMONAD_BIN=$(which kmonad)
LIST_KEYBOARDS_BIN=$(which list-keyboards)

if [ -z "$KMONAD_BIN" ] || [ -z "$LIST_KEYBOARDS_BIN" ]; then
    echo "ERROR: 'kmonad' or 'list-keyboards' not found in your current PATH."
    echo "Make sure they are installed and accessible before running this script."
    exit 1
fi

# 2. Generate the Startup Script with Absolute Paths (Only targets the first keyboard)
echo "Generating startup script ($STARTUP_SCRIPT) to target the first keyboard..."
cat > "$STARTUP_SCRIPT" <<EOF
#!/bin/bash

# Absolute paths determined by the install script:
KMONAD_BIN="$KMONAD_BIN"
LIST_KEYBOARDS_BIN="$LIST_KEYBOARDS_BIN"
KMONAD_CONFIG_FILE="$KMONAD_CONFIG_DIR/kmonad.kbd"

echo "Kmonad Daemon running..."

# Use absolute paths for all commands
# Get the output, extract the first keyboard ID, and break
KBOUT=\$("$LIST_KEYBOARDS_BIN" 2>&1)
FIRST_KB=\$(echo "\$KBOUT" | head -n 1)

if [ -z "\$FIRST_KB" ]; then
    echo "ERROR: No keyboards detected by \$LIST_KEYBOARDS_BIN."
    exit 1
fi

echo "Found and targeting keyboard: \$FIRST_KB"

# Run kmonad once in the background (&) for the first keyboard
"\$KMONAD_BIN" "\$KMONAD_CONFIG_FILE" --input "iokit-name \$FIRST_KB" &

jobs
wait
EOF

# 3. Ensure the generated script is executable
chmod +x "$STARTUP_SCRIPT"


# 4. Copy and set config (for the root Daemon user)
echo "Setting up root configuration..."
mkdir -p "$KMONAD_CONFIG_DIR"
cp "$SCRIPT_DIR/kmonad.kbd" "$KMONAD_CONFIG_DIR/kmonad.kbd"


# 5. Install and Load the Launch Daemon

# Unload any existing service first (Fixes reinstallation issues)
echo "Attempting to unload previous service..."
launchctl unload "$PLIST_PATH" 2>/dev/null || true

# Copy the plist
echo "Installing Launch Daemon plist..."
cp "$SCRIPT_DIR/$PLIST_FILE" "$PLIST_PATH"

# Set permissions
chown root:wheel "$PLIST_PATH"
chmod 644 "$PLIST_PATH"

# Load the service (This will start kmonad immediately)
echo "Loading service..."
launchctl load "$PLIST_PATH"

echo "--- Installation Complete ---"
echo "Check /tmp/kmonad_daemon.log for startup status."

# If you got IOHIDDeviceOpen error: (iokit/common) not permitted in the log file, you need to allow input monitoring for the kmonad binary