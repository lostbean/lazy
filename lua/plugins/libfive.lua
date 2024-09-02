return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        scheme = { "schemat" },
        guile = { "schemat" },
      },
      formatters = {
        --  Using https://github.com/raviqqe/schemat to format Scheme and Guile for libfive
        -- since libfive uses square brackets for lists instead of parentheses and Guile pretty-print
        -- converts square brackets to parentheses.
        schemat = function(bufnr)
          return {
            command = require("conform.util").find_executable({
              "schemat",
            }, "schemat"),
            inherit = false,
            stdin = true,
          }
        end,
      },
    },
  },
}
