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
      "smoka7/hydra.nvim",
    },
    opts = {},
    cmd = { "MCstart", "MCvisual", "MCclear", "MCpattern", "MCvisualPattern", "MCunderCursor" },
    keys = {
      {
        mode = { "v", "n" },
        "<Leader>m",
        "<cmd>MCstart<cr>",
        desc = "Multi Cursor",
      },
    },
  },

  {
    "kylechui/nvim-surround",
    event = "VeryLazy",
  },
}
