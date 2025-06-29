return {
  { "nvim-telescope/telescope.nvim", enabled = false },

  {
    vim.api.nvim_create_autocmd("FileType", {
      pattern = "*.lua",
      callback = function(event)
        local filetype = event.match
        if filetype == "lua" then
          vim.bo[event.buf].tabstop = 2
          vim.bo[event.buf].shiftwidth = 2
          vim.bo[event.buf].expandtab = true
        end
      end,
    }),
  },
}
