local layout_utils = require("bindings.layout-utils")

-- Scrolling layout
o.bind("SUPER + N", "Swap between Scrolling and Master layouts", function()
	local current_layout = layout_utils.get_workspace_layout()

	local target_layout_values = { layout = SCROLLING_LAYOUT, border_color = SCROLLING_LAYOUT_BORDER_COLOR }
	if current_layout == SCROLLING_LAYOUT then
		target_layout_values = { layout = MASTER_LAYOUT, border_color = MASTER_LAYOUT_BORDER_COLOR }
	end

	layout_utils.change_layout(target_layout_values.layout, target_layout_values.border_color)
end)

o.bind("SUPER + PERIOD", "Increase window size (Scrolling layout)", function()
	if layout_utils.get_workspace_layout() == SCROLLING_LAYOUT then
		hl.dispatch(hl.dsp.layout("colresize +conf"))
	end
end)

o.bind("SUPER + COMMA", "Decrease window size (Scrolling layout)", function()
	if layout_utils.get_workspace_layout() == SCROLLING_LAYOUT then
		hl.dispatch(hl.dsp.layout("colresize -conf"))
	end
end)
