-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Useful keymaps
-- <space>wd - close split/window
-- open file in split: ":vsplit file-name"
--    or <space><space> search for the file and then
--    <C-v> or <C-x> for vertical or horizontal

local map = vim.keymap.set
-- local all_modes = { "n", "i", "v", "x", "s", "o", "c", "t" }

-- Buffers
map("n", "<A-h>", vim.cmd.BufferLineCyclePrev)
map("n", "<A-l>", vim.cmd.BufferLineCycleNext)
map("n", "<A-S-h>", vim.cmd.BufferLineMovePrev)
map("n", "<A-S-l>", vim.cmd.BufferLineMoveNext)
map({ "n", "x" }, "<C-w>", "<esc><leader>bd", { remap = true })
map({ "n", "x" }, "<C-S-w>", "<esc><leader>bo", { remap = true })

-- Clipboard
local copyToClipboard = function()
  vim.cmd('normal! "+y')
end
map("v", "<C-c>", copyToClipboard, { desc = "Copy to system clipboard" })

-- Cursor Navigation
local diagnostic_goto = function(next, severity)
  return function()
    vim.diagnostic.jump({
      count = (next and 1 or -1) * vim.v.count1,
      severity = severity and vim.diagnostic.severity[severity] or nil,
      float = true,
    })
  end
end
map("n", "<A-[>", "<C-o>")
map("n", "<A-]>", "<C-i>")
map({ "n", "x" }, "H", "^")
map("n", "J", "<C-d>zz", { remap = true })
map("n", "K", "<C-u>zz", { remap = false })
map({ "n", "x" }, "L", "g_")
map("n", "<F2>", diagnostic_goto(true, "ERROR"), { desc = "Next Error" })
map("n", "<S-F2>", diagnostic_goto(false, "ERROR"), { desc = "Prev Error" })

-- Esc
map({ "n", "v", "i" }, "<A-j>", "<Esc>", { desc = "Go to Normal mode" })
map({ "n", "v", "i" }, "<C-j>", "<Esc>", { desc = "Go to Normal mode" })

-- Toggle Comment
local operator_rhs = function()
  return require("vim._comment").operator() .. "_"
end
map({ "n", "x" }, "<C-;>", operator_rhs, { expr = true })

require("keymaps.source_list")
require("keymaps.git_menu")
