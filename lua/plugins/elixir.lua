return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "elixir",
        "heex",
        "eex",
      })
    end,
  },

  {
    "nvim-neotest/neotest",
    optional = true,
    dependencies = {
      "jfpedroza/neotest-elixir",
    },
    opts = {
      adapters = {
        ["neotest-elixir"] = {},
      },
    },
  },

  {
    "elixir-tools/elixir-tools.nvim",
    version = "*",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      local elixir = require("elixir")
      local elixirls = require("elixir.elixirls")

      elixir.setup({
        nextls = { enable = false },
        credo = { enable = true },
        elixirls = {
          enable = true,
          -- Assume elixir-ls is in PATH. Project with elixir use provide via nix.
          cmd = "elixir-ls",
          settings = elixirls.settings({
            dialyzerEnabled = true,
            enableTestLenses = true,
          }),
          on_attach = function(client, bufnr)
            vim.keymap.set("n", "<space>fp", ":ElixirFromPipe<cr>", { buffer = true, noremap = true })
            vim.keymap.set("n", "<space>tp", ":ElixirToPipe<cr>", { buffer = true, noremap = true })
            vim.keymap.set("v", "<space>em", ":ElixirExpandMacro<cr>", { buffer = true, noremap = true })
          end,
        },
      })
    end,
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
  },
  {
    "mfussenegger/nvim-lint",
    optional = true,
    opts = function(_, opts)
      if vim.fn.executable("credo") == 0 then
        return
      end
      opts.linters_by_ft = {
        elixir = { "credo" },
      }
    end,
  },

  {
    "mfussenegger/nvim-dap",
    config = function()
      local dap = require("dap")

      dap.adapters.elixir = {
        type = "executable",
        -- Assume debugger is in PATH. Project with elixir use provide via nix (part of the elixir-ls derivation).
        command = "elixir-debug-adapter",
      }

      dap.configurations.elixir = {
        {
          type = "elixir",
          name = "Run Elixir Program",
          task = "phx.server",
          taskArgs = { "--trace" },
          request = "launch",
          startApps = true, -- for Phoenix projects
          projectDir = "${workspaceFolder}",
          requireFiles = {
            "test/**/test_helper.exs",
            "test/**/*_test.exs",
          },
        },
      }
    end,
  },
}
