return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        nginx = { "nginxfmt" },
      },
      formatters = {
        nginxfmt = function(bufnr)
          return {
            command = require("conform.util").find_executable({
              "nginxfmt",
            }, "nginxfmt"),
            inherit = false,
            stdin = true,
            args = { "--pipe" },
          }
        end,
      },
    },
  },
}
