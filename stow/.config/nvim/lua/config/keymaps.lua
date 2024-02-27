-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Keybinds
local Util = require("lazyvim.util")
local map = Util.safe_keymap_set

map("n", "<Tab>", ":bnext<cr>", { desc = "Next buffer" })
map("n", "<S-Tab>", ":bprev<cr>", { desc = "Previous buffer" })
-- map("n", "<S-x>", ":bd<cr>bn<cr>", { desc = "Kill buffer" })
map("n", "<leader>h", ":noh<cr>", { desc = "No highlight" })
