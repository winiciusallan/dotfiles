-- Neotree configs

-- local reveal_file = vim.fn.getcwd()
-- require("neo-tree.command").execute({
--   action = "show",
--   toggle = true,
--   source = "filesystem",
--   position = "right",
--   reveal_file = reveal_file,
--   reveal_force_cwd = true,
-- })

return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    window = {
      position = "right",
    },
  },
}
