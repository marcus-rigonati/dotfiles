local layout_utils = require("bindings.layout-utils")

o.bind("SUPER + M", "TODO", function()
	local current_layout = layout_utils.get_workspace_layout()

	local target_layout_values = { layout = "monocle", border_color = "rgb(ff6666)" }
	if current_layout == "monocle" then
		target_layout_values = { layout = "master", border_color = "rgb(89b4fa)" }
	end

	layout_utils.change_layout(target_layout_values.layout, target_layout_values.border_color)
end)
