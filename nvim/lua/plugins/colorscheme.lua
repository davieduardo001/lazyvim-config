return {
  -- Minimal theme (min-theme)
  {
    "mvllow/min.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("min").setup({
        transparent = false,
      })
      vim.cmd.colorscheme("min")
    end,
  },
}
