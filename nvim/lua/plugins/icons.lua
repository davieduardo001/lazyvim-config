return {
  -- Icon theme integration for Catppuccin
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      integrations = {
        -- This provides the "pixel perfect" icon colors matching the Catppuccin palette
        nvim_web_devicons = true,
      },
    },
  },
  {
    "nvim-tree/nvim-web-devicons",
    lazy = true,
  },
}
