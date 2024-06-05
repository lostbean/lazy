return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        gopls = {
          -- use local gopls install a project via nix to match the complier version
          mason = false,
        },
      },
    },
  },
}
