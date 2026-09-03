-- Change the default Omarchy look'n'feel.

-- https://wiki.hypr.land/Configuring/Basics/Variables/#general
hl.config({
	general = {
		--     -- No gaps between windows or borders.
		gaps_in = 3,
		gaps_out = 3,
		--     border_size = 0,
		--
		layout = "master",
		no_focus_fallback = true,
	},

	master = {
		new_status = "slave",
		mfact = 0.5,
	},

	scrolling = {
		column_width = 0.5,
		explicit_column_widths = "0.3,0.5,0.7,1.0",
	},
})

-- https://wiki.hypr.land/Configuring/Basics/Variables/#decoration
hl.config({
	decoration = {
		--     -- Use round window corners.
		rounding = 5,
		--
		--     -- Dim unfocused windows (0.0 = no dim, 1.0 = fully dimmed).
		--     dim_inactive = true,
		--     dim_strength = 0.15,
	},
})

-- https://wiki.hypr.land/Configuring/Basics/Variables/#animations
hl.curve("myBezier", {
	type = "bezier",
	points = {
		{ 0.05, 1 },
		{ 0.1, 1 },
	},
})

hl.animation({
	workspace_wraparound = false,
	leaf = "workspaces",
	enabled = true,
	speed = 6,
	bezier = "myBezier",
	style = "slide",
})

-- https://wiki.hypr.land/Configuring/Basics/Variables/#layout
-- hl.config({
--   layout = {
--     -- Avoid overly wide single-window layouts on wide screens.
--     single_window_aspect_ratio = { 1, 1 },
--   },
-- })

-- https://wiki.hypr.land/Configuring/Layouts/Scrolling-Layout/
-- hl.config({
--   scrolling = {
--     -- See only one column per screen instead of two.
--     column_width = 0.97,
--   },
-- })
