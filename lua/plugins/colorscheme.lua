return {

  -- #######################################################################
  -- >>> Fonts
  -- Using Monofur Nerd Font Mono - Regular - size 15 on ASCII characters
  -- and Monoid Nerd Font - Regular - size 12 on no ASCII characters
  -- #######################################################################

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = function()
        local scheme = require("catppuccin")
        scheme.setup()
        vim.cmd.colorscheme("catppuccin")
        scheme.load()
      end,
    },
  },

  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    event = "VeryLazy",
    opts = function()
      return {
        options = {
          theme = "catppuccin",
          component_separators = "",
          section_separators = { left = "", right = "" },
        },
      }
    end,
  },
}
