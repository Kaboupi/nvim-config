return {
  -- Transaprent
  { "xiyaowong/transparent.nvim" },

  -- Colorschemes
  {
    "sainnhe/everforest",
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.gruvbox_material_enable_italic = true
      vim.g.gruvbox_material_background = "medium" -- hard / medium / soft
    end,
  },
  {
    "sainnhe/gruvbox-material",
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.gruvbox_material_enable_italic = true
      vim.g.gruvbox_material_background = "hard" -- hard / medium / soft
    end,
  },
  {
    "sainnhe/sonokai",
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.sonokai_style = "andromeda" -- default, atlantis, andromeda, shusia, maia
      vim.g.sonokai_better_performance = 1 -- 1 / 0
    end,
  },

  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
  },

  { "ellisonleao/gruvbox.nvim" },

  { "EdenEast/nightfox.nvim" },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox-material",
    },
  },
}
