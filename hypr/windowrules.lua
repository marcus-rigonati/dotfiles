hl.window_rule({
	name = "Firefox History Always Floating",
	match = {
		class = "firefox",
		title = "Library",
	},
	float = true,
	size = { 974, 697 },
	move = {
		"monitor_w/2 - 974/2",
		"monitor_h/2 - 697/2",
	},
})
