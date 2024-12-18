return {
  {
    "ahmedkhalf/project.nvim",
    opts = {
      manual_mode = false,
    },
  },

  {
    "smoka7/multicursors.nvim",
    event = "VeryLazy",
    dependencies = {
      "nvimtools/hydra.nvim",
    },
    opts = {},
    cmd = { "MCstart", "MCvisual", "MCclear", "MCpattern", "MCvisualPattern", "MCunderCursor" },
    keys = {
      {
        mode = { "v", "n" },
        "<Leader>m",
        "<cmd>MCstart<cr>",
        desc = "Create a selection for selected text or word under the cursor",
      },
    },
  },
  -- -- Visual Multi seems to be broken
  -- {
  --   "mg979/vim-visual-multi",
  --   lazy = false,
  --   keys = {
  --     "<C-d>",
  --     "<M-C-Down>",
  --     "<M-C-Up>",
  --     "\\",
  --   },
  --   init = function()
  --     vim.g.VM_Leader = "\\"
  --     vim.g.VM_theme = "neon"
  --     vim.g.VM_default_mappings = 1
  --     vim.g.VM_mouse_mappings = 0
  --     vim.g.VM_maps = {
  --       ["Find Under"] = "<C-d>",
  --       ["Find Subword Under"] = "<C-d>",
  --       ["Add Cursor Down"] = "<M-C-Down>",
  --       ["Add Cursor Up"] = "<M-C-Up>",
  --     }
  --   end,
  -- },

  {
    "folke/flash.nvim",
    enable = false,
  },

  {
    "tpope/vim-abolish",
    event = "VeryLazy",
  },

  {
    "nvim-pack/nvim-spectre",
    build = false,
    cmd = "Spectre",
    opts = { open_cmd = "noswapfile vnew" },
    -- stylua: ignore
    keys = {
      { "<leader>sr", function() 
        require('spectre').setup({
          default = {
            replace = {
              cmd = "sed"
            }
          }
      })
      require("spectre").open()
      end,
        desc = "Replace in Files (Spectre)" },
    },
  },
}
