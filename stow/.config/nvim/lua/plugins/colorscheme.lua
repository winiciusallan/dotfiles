return {
  { "marko-cerovac/material.nvim", opts = {
    disable = {
      background = false,
    },
  } },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    config = function()
      vim.cmd("colorscheme rose-pine")
    end,
  },
}
