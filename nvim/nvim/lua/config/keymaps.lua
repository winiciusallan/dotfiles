-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Keybinds
local map = vim.keymap.set

map("n", "<Tab>", ":bnext<cr>", { desc = "Next buffer" })
map("n", "<S-Tab>", ":bprev<cr>", { desc = "Prev buffer" })
-- map("n", "<S-x>", ":bd<cr>bn<cr>", { desc = "Kill buffer" })
map("n", "<leader>h", ":noh<cr>", { desc = "No highlight" })
-- map("n", "<leader>e", "<cmd>Oil<CR>")
map("n", "<leader>w>", "20<C-w>>", { desc = "Increase width" })
map("n", "<leader>w<", "20<C-w><", { desc = "Increase width" })
