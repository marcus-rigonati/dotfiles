local map = vim.keymap.set

-- Custom menu for Ctrl+b
map({ "n", "x" }, "<C-b>", function()
  local item1 = "Go to Definition"
  local item2 = "Go to Implementation"
  local item3 = "Show Usages (Incoming Calls)"
  local items = { item1, item2, item3 }

  vim.ui.select(items, {
    prompt = "Choose Action:",
  }, function(choice)
    if choice == item1 then
      vim.cmd("normal! l")
      vim.lsp.buf.definition()
    elseif choice == item2 then
      vim.cmd("normal! l")
      vim.lsp.buf.implementation()
    elseif choice == item3 then
      vim.cmd("normal! l")
      vim.lsp.buf.references()
    end
  end)
end, { desc = "Ctrl-b Menu", remap = false })
