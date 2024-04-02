return {
  {
    "neovim/nvim-lspconfig",
    optional = true,
    opts = {
      servers = {
        marksman = { mason = false },
      },
    },
  },
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        markdown = { { "prettierd", "prettier" } },
      },
    },
  },
}
