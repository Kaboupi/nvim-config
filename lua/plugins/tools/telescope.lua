return {
  {
    "nvim-telescope/telescope.nvim",
    url = "git@github.com:nvim-telescope/telescope.nvim",

    dependencies = {
      "nvim-lua/plenary.nvim",
      url = "git@github.com:nvim-lua/plenary.nvim",
    },
    enable = true,
    config = function()
      local telescope = require("telescope")

      telescope.setup({
        defaults = {
          hidden = false,
          sorting_strategy = "ascending",
          layout_strategy = "horizontal",
        },
        extensions = {
          fzf = {
            fuzzy = true,
            override_file_sorter = true,
            override_generic_sorter = true,
            case_mode = "smart_case",
          },
        },
      })

      pcall(function()
        require("telescope").load_extension("fzf")
      end)
    end,
  },
}
