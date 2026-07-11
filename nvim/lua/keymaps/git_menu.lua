local map = vim.keymap.set

-- Custom menu for git
map({ "n", "x" }, "<A-g>", function()
  local item1 = "All Files Diff (hunks)"
  local item2 = "All Files Diff (origin)"
  local item3 = "Status"
  local item4 = "Git Log"
  local item5 = "Current File History"
  local item6 = "Lazygit"
  local items = { item1, item2, item3, item4, item5, item6 }

  vim.ui.select(items, {
    prompt = "Choose Action:",
  }, function(choice)
    if choice == item1 then
      Snacks.picker.git_diff()
    elseif choice == item2 then
      Snacks.picker.git_diff({ base = "origin", group = true })
    elseif choice == item3 then
      Snacks.picker.git_status()
    elseif choice == item4 then
      Snacks.picker.git_log({ cwd = LazyVim.root.git() })
    elseif choice == item5 then
      Snacks.picker.git_log_file()
    elseif choice == item6 then
      Snacks.lazygit({ cwd = LazyVim.root.git() })
    end
  end)
end, { desc = "Git Menu", remap = false })
