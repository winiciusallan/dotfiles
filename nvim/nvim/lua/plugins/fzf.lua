-- function()
--   local actual_dir = vim.fn.expand("%:p:h")
--   require("fzf-lua").files({ cwd = actual_dir })
-- end,
local default_config = {
  keys = {
    {
      "<leader>ff",
      function()
        local args = vim.fn.argv()
        local actual_dir

        if #args < 1 then
          actual_dir = vim.fn.expand("%:p:h")
        else
          local path = args[1]
          if vim.uv.fs_stat(path).type == "directory" then
            actual_dir = vim.uv.fs_realpath(path)
          end
        end

        require("fzf-lua").files({ cwd = actual_dir })
      end,
      { desc = "Search for a file", silent = true },
    },
    { "<leader>fz", "<cmd>FzfLua<cr>", { desc = "Open fuse window", silent = true } },
    {
      "<leader>fc",
      "<cmd>FzfLua files cwd=~/.config/nvim/<cr>",
      { desc = "Search for a file in config directory", silent = true },
    },
    { "<leader>fs", "<cmd>FzfLua live_grep<cr>", { desc = "Search for a symbol or word", silent = true } },
  },
}

return {
  "ibhagwan/fzf-lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  keys = default_config.keys,
  config = function()
    -- calling `setup` is optional for customization
    require("fzf-lua").setup({})
  end,
}
