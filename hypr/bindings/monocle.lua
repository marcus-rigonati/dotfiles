local layout_utils = require("bindings.layout-utils")

o.bind("SUPER + M", "Swap between Monocle and Master layouts", function()
	local current_layout = layout_utils.get_workspace_layout()

	local target_layout_values = { layout = MONOCLE_LAYOUT, border_color = MONOCLE_LAYOUT_BORDER_COLOR }
	if current_layout == MONOCLE_LAYOUT then
		target_layout_values = { layout = MASTER_LAYOUT, border_color = MASTER_LAYOUT_BORDER_COLOR }
	end

	layout_utils.change_layout(target_layout_values.layout, target_layout_values.border_color)
end)
