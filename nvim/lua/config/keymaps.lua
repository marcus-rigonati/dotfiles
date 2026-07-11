-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Useful keymaps
-- <space>wd - close split/window

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
map("v", "<C-c>", '"+y', { desc = "Copy to system clipboard" })
map("n", "<A-[>", "<C-o>")
map("n", "<A-]>", "<C-i>")
map({ "n", "x", "i" }, "<A-j>", "<Esc>", { desc = "Exit insert mode" })
map({ "n", "x", "i" }, "<C-j>", "<Esc>", { desc = "Exit insert mode" })

local operator_rhs = function()
  return require("vim._comment").operator() .. "_"
end
map({ "n", "x" }, "<C-;>", operator_rhs, { expr = true }) -- Toggle Comment

require("keymaps.source_list")
require("keymaps.git_menu")
