local alertDuration = 0.25

-- Reload the config
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "R", function()
	hs.reload()
	hs.alert.show("Config loaded", 1)
end)

-- Resizing windows
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "'", function()
    local window = hs.window.focusedWindow()
    local windowFrame = window:frame()
    local screenFrame = window:screen():frame()

    local shrinkingRatio = 0.08
    local horizontalMargin = screenFrame.w * shrinkingRatio
    local verticalMargin = screenFrame.h * shrinkingRatio

    windowFrame.x = screenFrame.x + horizontalMargin
    windowFrame.y = screenFrame.y + verticalMargin
    windowFrame.w = screenFrame.w - (horizontalMargin * 2)
    windowFrame.h = screenFrame.h - (verticalMargin * 2)
    window:setFrame(windowFrame, 0)

	hs.alert.show("Window: Center", alertDuration)
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "return", function()
    local window = hs.window.focusedWindow()
    local windowFrame = window:frame()
    local screenFrame = window:screen():frame()

    windowFrame.x = screenFrame.x
    windowFrame.y = screenFrame.y
    windowFrame.w = screenFrame.w
    windowFrame.h = screenFrame.h
    window:setFrame(windowFrame, 0)

	hs.alert.show("Window: Full screen", alertDuration)
end)

-- Moving windows in current screen
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "Up", function()
    local window = hs.window.focusedWindow()
    local windowFrame = window:frame()
    local screenFrame = window:screen():frame()

    windowFrame.x = screenFrame.x
    windowFrame.y = screenFrame.y
    windowFrame.w = screenFrame.w
    windowFrame.h = screenFrame.h / 2
    window:setFrame(windowFrame, 0)

	hs.alert.show("Window: Top", alertDuration)
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "Right", function()
    local window = hs.window.focusedWindow()
    local windowFrame = window:frame()
    local screenFrame = window:screen():frame()

    windowFrame.x = screenFrame.x + (screenFrame.w / 2)
    windowFrame.y = screenFrame.y
    windowFrame.w = screenFrame.w / 2
    windowFrame.h = screenFrame.h
    window:setFrame(windowFrame, 0)

	hs.alert.show("Window: Right", alertDuration)
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "Down", function()
    local window = hs.window.focusedWindow()
    local windowFrame = window:frame()
    local screenFrame = window:screen():frame()

    windowFrame.x = screenFrame.x
    windowFrame.y = screenFrame.y + (screenFrame.h / 2)
    windowFrame.w = screenFrame.w
    windowFrame.h = screenFrame.h / 2
    window:setFrame(windowFrame, 0)

	hs.alert.show("Window: Bottom", alertDuration)
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "Left", function()
    local window = hs.window.focusedWindow()
    local windowFrame = window:frame()
    local screenFrame = window:screen():frame()

    windowFrame.x = screenFrame.x
    windowFrame.y = screenFrame.y
    windowFrame.w = screenFrame.w / 2
    windowFrame.h = screenFrame.h
    window:setFrame(windowFrame, 0)

	hs.alert.show("Window: Left", alertDuration)
end)

-- Moving windows between screens
hs.hotkey.bind({"alt", "ctrl"}, "Left", function()
    local win = hs.window.focusedWindow()
    win:moveToScreen(win:screen():previous(), false, false, 0)
end)

hs.hotkey.bind({"alt", "ctrl"}, "Right", function()
    local win = hs.window.focusedWindow()
    win:moveToScreen(win:screen():next(), false, false, 0)
end)

-- Experiments
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "T", function()
    local app = hs.application.frontmostApplication()
    hs.tabs.enableForApp(app)
end)
