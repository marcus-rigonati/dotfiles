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
hl.unbind("SUPER + l")
hl.unbind("SUPER + j")
hl.unbind("SUPER + k")
hl.unbind("SUPER + h")
hl.unbind("SUPER + t")
hl.unbind("SUPER + w")
hl.unbind("SUPER + v")
hl.unbind("SUPER + f")
hl.unbind("SUPER + SPACE")
hl.unbind("SUPER + SHIFT + bracketleft")
hl.unbind("SUPER + SHIFT + h")
hl.unbind("SUPER + SHIFT + j")
hl.unbind("SUPER + SHIFT + k")
hl.unbind("SUPER + SHIFT + l")
hl.unbind("SUPER + SHIFT + w")
hl.unbind("SUPER + SHIFT + f")
hl.unbind("SUPER + CTRL + v")
hl.unbind("SUPER + COMMA")

require("hypr.bindings.monocle")
require("hypr.bindings.applications")

-- Virtual Workspaces Movement
o.bind("SUPER + page_up", "Previous workspace", hl.dsp.focus({ workspace = "-1" }))
o.bind("SUPER + bracketleft", "Previous workspace", hl.dsp.focus({ workspace = "-1" }))
o.bind("SUPER + page_down", "Next workspace", hl.dsp.focus({ workspace = "+1" }))
o.bind("SUPER + bracketright", "Next workspace", hl.dsp.focus({ workspace = "+1" }))
o.bind("SUPER + SHIFT + page_up", "move window to the workspace on the left", hl.dsp.window.move({ workspace = "-1" }))
o.bind("SUPER + SHIFT + bracketleft", "Window to the workspace on the left", hl.dsp.window.move({ workspace = "-1" }))
o.bind("SUPER + SHIFT + page_down", "Window to the workspace on the right", hl.dsp.window.move({ workspace = "+1" }))
o.bind("SUPER + SHIFT + bracketright", "Window to the workspace on the right", hl.dsp.window.move({ workspace = "+1" }))

-- Windows movement and focus using vim motions
o.bind("SUPER + h", "Focus on left window", hl.dsp.focus({ direction = "l" }))
o.bind("SUPER + l", "Focus on right window", hl.dsp.focus({ direction = "r" }))
o.bind("SUPER + k", "Focus on above window", hl.dsp.focus({ direction = "u" }))
o.bind("SUPER + j", "Focus on below window", hl.dsp.focus({ direction = "d" }))
o.bind("SUPER + SHIFT + h", "Move window to the left", hl.dsp.window.move({ direction = "l" }))
o.bind("SUPER + SHIFT + j", "Move window downwards", hl.dsp.window.move({ direction = "d" }))
o.bind("SUPER + SHIFT + k", "Move window upwards", hl.dsp.window.move({ direction = "u" }))
o.bind("SUPER + SHIFT + l", "Move window to the right", hl.dsp.window.move({ direction = "r" }))

-- Others
o.bind("SUPER + SUPER_L", "", hl.dsp.exec_cmd("omarchy menu"), { release = true })
o.bind("SUPER + q", "Kill Active Window", hl.dsp.window.close())
o.bind("SUPER + w", "Show key bindings", hl.dsp.exec_cmd("omarchy-menu-keybindings"))
o.bind("SUPER + f", "Toggle window floating/tiling", hl.dsp.window.float({ action = "toggle" }))
o.bind("SUPER + SHIFT + f", "Toggle fullscreen", hl.dsp.window.fullscreen({ mode = "fullscreen" }))
o.bind("ALT + SHIFT + 5", "Screenshot", "omarchy capture screenshot")
