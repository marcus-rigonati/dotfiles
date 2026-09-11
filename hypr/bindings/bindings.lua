-- Keep only your personal keybinding overrides here. Add new bindings or
-- unbind defaults before replacing them.

-- See current bindings and descriptions:
--   omarchy menu keybindings --print

-- To disable every Omarchy default binding, set this in
-- ~/.config/hypr/hyprland.lua before require("default.hypr.omarchy"), then add
-- only the bindings you want below:
--   omarchy_default_bindings = false

-- To disable all preinstalled app/webapp bindings, set:
--   omarchy_preinstalled_bindings = false

-- Add a new binding.
-- o.bind("SUPER + SHIFT + R", "SSH", "alacritty -e ssh your-server")

-- Change an existing binding by unbinding it first, then binding the key again.
-- This example changes SUPER+SPACE from the launcher to the Omarchy root menu.
-- hl.unbind("SUPER + SPACE")
-- o.bind("SUPER + SPACE", "Omarchy menu", "omarchy-menu toggle root")

-- Disable a default binding without replacing it.
-- hl.unbind("SUPER + SHIFT + B")

-- Logitech MX Keys examples:
-- o.bind("SUPER + SHIFT + S", nil, "omarchy-capture-screenshot")
-- o.bind("SUPER + H", nil, "voxtype record toggle")
-- o.bind("SUPER + PERIOD", nil, "omarchy-shell shell toggle omarchy.emojis")

-- Unbindings
hl.unbind("SUPER + L")
hl.unbind("SUPER + J")
hl.unbind("SUPER + K")
hl.unbind("SUPER + H")
hl.unbind("SUPER + T")
hl.unbind("SUPER + W")
hl.unbind("SUPER + V")
hl.unbind("SUPER + F")
hl.unbind("SUPER + SPACE")
hl.unbind("SUPER + SHIFT + BRACKETLEFT")
hl.unbind("SUPER + SHIFT + H")
hl.unbind("SUPER + SHIFT + J")
hl.unbind("SUPER + SHIFT + K")
hl.unbind("SUPER + SHIFT + L")
hl.unbind("SUPER + SHIFT + W")
hl.unbind("SUPER + SHIFT + F")
hl.unbind("SUPER + CTRL + V")
hl.unbind("SUPER + COMMA")

require("hypr.bindings.monocle")
require("hypr.bindings.applications")
require("hypr.bindings.scrolling")

-- Virtual Workspaces Movement
o.bind("SUPER + PAGE_UP", "Previous workspace", hl.dsp.focus({ workspace = "-1" }))
o.bind("SUPER + BRACKETLEFT", "Previous workspace", hl.dsp.focus({ workspace = "-1" }))
o.bind("SUPER + PAGE_DOWN", "Next workspace", hl.dsp.focus({ workspace = "+1" }))
o.bind("SUPER + BRACKETRIGHT", "Next workspace", hl.dsp.focus({ workspace = "+1" }))
o.bind("SUPER + SHIFT + page_up", "move window to the workspace on the left", hl.dsp.window.move({ workspace = "-1" }))
o.bind("SUPER + SHIFT + bracketleft", "Window to the workspace on the left", hl.dsp.window.move({ workspace = "-1" }))
o.bind("SUPER + SHIFT + page_down", "Window to the workspace on the right", hl.dsp.window.move({ workspace = "+1" }))
o.bind("SUPER + SHIFT + bracketright", "Window to the workspace on the right", hl.dsp.window.move({ workspace = "+1" }))

-- Windows movement and focus using vim motions
o.bind("SUPER + H", "Focus on left window", hl.dsp.focus({ direction = "l" }))
o.bind("SUPER + L", "Focus on right window", hl.dsp.focus({ direction = "r" }))
o.bind("SUPER + K", "Focus on above window", hl.dsp.focus({ direction = "u" }))
o.bind("SUPER + J", "Focus on below window", hl.dsp.focus({ direction = "d" }))
o.bind("SUPER + SHIFT + H", "Move window to the left", hl.dsp.window.move({ direction = "l" }))
o.bind("SUPER + SHIFT + J", "Move window downwards", hl.dsp.window.move({ direction = "d" }))
o.bind("SUPER + SHIFT + K", "Move window upwards", hl.dsp.window.move({ direction = "u" }))
o.bind("SUPER + SHIFT + L", "Move window to the right", hl.dsp.window.move({ direction = "r" }))

-- Others
o.bind("SUPER + SUPER_L", "Omarchy Menu", hl.dsp.exec_cmd("omarchy menu"), { release = true })
o.bind("SUPER + Q", "Kill Active Window", hl.dsp.window.close())
o.bind("SUPER + W", "Show key bindings", hl.dsp.exec_cmd("omarchy-menu-keybindings"))
o.bind("SUPER + F", "Toggle window floating/tiling", hl.dsp.window.float({ action = "toggle" }))
o.bind("SUPER + SHIFT + F", "Toggle fullscreen", hl.dsp.window.fullscreen({ mode = "fullscreen" }))
o.bind("ALT + SHIFT + 5", "Screenshot", "omarchy capture screenshot")
o.bind("SUPER + E", "File Manager", "nautilus ~/Downloads/")
