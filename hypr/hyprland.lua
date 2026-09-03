-- Learn how to configure Hyprland: https://wiki.hypr.land/Configuring/Start/

-- Omarchy's bootstrap keeps path setup out of this user config.
dofile((os.getenv("OMARCHY_PATH") or "/usr/share/omarchy") .. "/default/hypr/bootstrap.lua")

-- Disable all Omarchy default bindings. Add your own in hypr/bindings.lua.
-- omarchy_default_bindings = false
--
-- Or disable only bindings for Omarchy's preinstalled apps/web apps while
-- keeping core window-manager bindings:
-- omarchy_preinstalled_bindings = false

-- Global variables
MASTER_LAYOUT = "master"
MONOCLE_LAYOUT = "monocle"
SCROLLING_LAYOUT = "scrolling"
MASTER_LAYOUT_BORDER_COLOR = "rgb(89b4fa)"
SCROLLING_LAYOUT_BORDER_COLOR = "rgb(009900)"
MONOCLE_LAYOUT_BORDER_COLOR = "rgb(ff6666)"

-- Load Omarchy defaults.
require("default.hypr.omarchy")

-- Put your personal overrides in these files. They're loaded after Omarchy's
-- defaults so package updates can improve the defaults without rewriting your
-- ~/.config/hypr files.
require("hypr.monitors")
require("hypr.input")
require("hypr.looknfeel")
require("hypr.autostart")
require("hypr.windowrules")
require("hypr.bindings.bindings")

-- Toggle config flags dynamically.
require("default.hypr.toggles")

-- Add any other personal Hyprland configuration below.
-- o.window("qemu", { workspace = "5" })
