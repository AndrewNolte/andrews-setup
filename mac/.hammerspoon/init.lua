hs.hotkey.bind({"cmd", "alt", "ctrl"}, "Left", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y
  f.w = max.w / 2
  f.h = max.h
  win:setFrame(f)
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "Right", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x + (max.w / 2)
  f.y = max.y
  f.w = max.w / 2
  f.h = max.h
  win:setFrame(f)
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "Up", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y
  f.w = max.w
  f.h = max.h
  win:setFrame(f)
end)

-- -- main setup now

-- A global variable for the Hyper Mode
hyper = hs.hotkey.modal.new({}, 'F17')

-- Enter Hyper Mode when F18 (Hyper/Capslock) is pressed
function enterHyperMode()
  hyper.triggered = false
  hyper:enter()
end

-- Leave Hyper Mode when F18 (Hyper/Capslock) is pressed,
-- send ESCAPE if no other keys are pressed.
function exitHyperMode()
  hyper:exit()
  if not hyper.triggered then
    hs.eventtap.keyStroke({}, 'ESCAPE')
  end
end

-- -- Bind the Hyper key
-- f18 = hs.hotkey.bind({"ctrl", "cmd", "option"}, 'shift', enterHyperMode, exitHyperMode)





-- shutdown on hyper-q

hs.hotkey.bind({"cmd", "alt", "ctrl", "shift"}, "q", function()
  hs.caffeinate.lockScreen()
  -- hyper.triggered = true
end)

-- e,r to switch tabs

-- hyper:bind({}, 'e', function()
--   hs.eventtap.keyStroke({'ctrl', 'shift'}, 'tab')
--   hyper.triggered = true
-- end)

-- hyper:bind({}, 'r', function()
--   hs.eventtap.keyStroke({'ctrl'}, 'tab')
--   hyper.triggered = true
-- end)

-- ijkl -> arrow keys

-- hyper:bind({}, 'j', function()
--   hs.eventtap.keyStroke({}, 'left')
--   hyper.triggered = true
-- end)

-- hyper:bind({}, 'l', function()
--   hs.eventtap.keyStroke({}, 'right')
--   hyper.triggered = true
-- end)

-- hyper:bind({}, 'i', function()
--   hs.eventtap.keyStroke({}, 'up')
--   hyper.triggered = true
-- end)

-- hyper:bind({}, 'k', function()
--   hs.eventtap.keyStroke({}, 'down')
--   hyper.triggered = true
-- end)
