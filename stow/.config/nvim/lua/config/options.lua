-- Options are automatically loaded before lazy.nvim startup

-- Add any additional options here

vim.g.material_style = "deep ocean"
vim.o.tabstop = 4
vim.o.expandtab = true
vim.o.softtabstop = 4
vim.o.shiftwidth = 4

-- Disable Snacks scroll animation
vim.g.snacks_animate = false

vim.api.nvim_create_augroup("vimrcEx", { clear = true })

vim.api.nvim_create_autocmd("FileType", {
  group = "vimrcEx",
  pattern = "text",
  command = "setlocal textwidth=70",
})
