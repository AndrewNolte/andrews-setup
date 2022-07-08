
# Andrew's setup



## Keybindings

### Installing
* [mac (hammerspoon + karabiner)](mac/)
* [linux (kmonad)](linux/)
* [windows (autohotkey)](windows/)

### General bindings
Capslock = hyper key

hyper + e, hyper + r is switch tab left or right, super useful for web browsing.

hyper + i,j,k,l is arrow keys

hyper + q is sleep


These are most maintained on mac, and the other OSs have most of the functionality with some caveats.



## ZSH setup
I use zsh, here's a [good explanation why](https://medium.com/@harrison.miller13_28580/bash-vs-z-shell-a-tale-of-two-command-line-shells-c65bb66e4658)

### [Oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh)
Oh my zsh is like a package manageer for zsh. I use the default template .zshrc, with two extensions:
* git: basic stuff like what branch you're in, autocomplete, etc
* zsh-autosuggestions: super useful, will autocomplete to your last command with that prefix, and then you can tab over to accept

## [Vscode extensions and bindings](.vscode/extensions.json)

```json
{
    "recommendations": [
        // theme
        "dracula-theme.theme-dracula",
        // git enhancement
        "eamodio.gitlens",
        // intelligient autocomplete (not copilot though)
        "VisualStudioExptTeam.vscodeintellicode",
        // AI codegen
        "GitHub.copilot",
        // remote dev
        "ms-vscode-remote.remote-containers",
        "ms-vscode-remote.remote-ssh",
        "ms-vscode-remote.remote-ssh-edit",
        "ms-vscode-remote.remote-wsl",
        // languages & file types
        "janisdd.vscode-edit-csv", // csv
        "ms-azuretools.vscode-docker", // docker files
        "golang.go", // golang
        "yzhang.markdown-all-in-one", // markdown
        "ms-python.python", // python
        "ms-python.vscode-pylance", // also python
        "tomoki1207.pdf", // pdfs
    ]
}
```

If you clone this repo and open in vscode, it will prompt you to install these.

## Other good setup guides

* https://sourabhbajaj.com/mac-setup/VisualStudioCode/
