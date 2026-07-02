-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
-- local all_modes = { "n", "i", "v", "x", "s", "o", "c", "t" }

-- Non-recursive remap in normal mode
map({ "n", "x" }, "H", "^")
map("n", "J", "<C-d>zz", { remap = true })
map("n", "K", "<C-u>zz", { remap = false })
map({ "n", "x" }, "L", "g_")
map({ "n", "x" }, "<C-w>", "<esc><leader>bd", { remap = true })
map({ "n", "x" }, "<C-S-w>", "<esc><leader>bo", { remap = true })
map("n", "<A-h>", "[b", { remap = true })
map("n", "<A-l>", "]b", { remap = true })
map("n", "<C-b>", "gd")

-- map("n", "<C-[>", "[b", { remap = true }) -- It should move caret back
-- map("n", "<C-]>", "]b", { remap = true }) -- It should move caret forward

-- Doenst work
-- map("n", "<C-;>", "vgc") -- Toggle Comment
-- map({ "n", "x" }, "s", "s")
-- map({ "n", "v" }, "<C-S-c>", '"+y')

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
