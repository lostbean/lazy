return {
  {
    "ahmedkhalf/project.nvim",
    opts = {
      manual_mode = false,
    },
  },

  {
    "mg979/vim-visual-multi",
    keys = {
      "<C-d>",
      "<M-C-Down>",
      "<M-C-Up>",
      "\\",
    },
    init = function()
      vim.g.VM_Leader = "\\"
      vim.g.VM_theme = "neon"
      vim.g.VM_default_mappings = 1
      vim.g.VM_mouse_mappings = 0
      vim.g.VM_maps = {
        ["Find Under"] = "<C-d>",
        ["Find Subword Under"] = "<C-d>",
        ["Add Cursor Down"] = "<M-C-Down>",
        ["Add Cursor Up"] = "<M-C-Up>",
      }
    end,
  },

  {
    "kylechui/nvim-surround",
    event = "VeryLazy",
  },

  {
    "folke/flash.nvim",
    enable = false,
  },
}
