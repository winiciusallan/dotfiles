return {
  require("lspconfig").terraformls.setup({
    init_options = {
      terraform = {
        path = "/opt/homebrew/bin/terraform",
      },
    },
  }),

  vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
    pattern = "*.tf",
    callback = function()
      vim.bo.filetype = "terraform"
    end,
  }),
}
