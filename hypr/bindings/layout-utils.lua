local layout = {}

function layout.get_workspace_layout()
	local workspace = hl.get_active_workspace()
	if workspace == nil or workspace.tiled_layout == nil then
		return
	end

	return workspace.tiled_layout
end

function layout.change_layout(target_layout, border_color)
	local active_workspace = hl.get_active_workspace()
	if active_workspace == nil or active_workspace.tiled_layout == nil then
		return
	end

	hl.config({ general = { layout = target_layout } })

	-- Change border color only if it was especified
	if border_color ~= nil then
		hl.config({
			general = {
				col = { active_border = border_color },
			},
		})
	end
end

return layout
