return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      table.insert(opts.ensure_installed, {
        "starlark",
      })

      vim.filetype.add({ filename = { Tiltfile = "starlark" } })
      vim.filetype.add({ extension = { tilt = "starlark" } })
    end,
  },
}
