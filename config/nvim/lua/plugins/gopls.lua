return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        gopls = {
          settings = {
            gopls = {
              capabilities = {
                documentFormattingProvider = false,
                documentRangeFormattingProvider = false,
              },
              gofumpt = false,
              codelenses = {
                gc_details = false,
                generate = true,
                regenerate_cgo = true,
                run_govulncheck = true,
                test = true,
                tidy = true,
                upgrade_dependency = true,
                vendor = true,
              },
              hints = {
                assignVariableTypes = false,
                compositeLiteralFields = false,
                compositeLiteralTypes = false,
                constantValues = true,
                functionTypeParameters = false,
                parameterNames = false,
                rangeVariableTypes = false,
              },
              analyses = {
                nilness = true,
                unusedparams = true,
                unusedwrite = true,
                useany = true,
              },
              usePlaceholders = false,
              completeUnimported = true,
              staticcheck = true,
              directoryFilters = {
                "-.git",
                "-node_modules",
              },
              semanticTokens = true,
            },
          },
        },
      },
    },
  },
}
