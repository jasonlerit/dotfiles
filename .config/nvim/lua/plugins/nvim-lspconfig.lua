return {
  "neovim/nvim-lspconfig",
  config = function()
    require("nvchad.configs.lspconfig").defaults()

    local home = os.getenv "HOME" or "~"

    local on_attach = require("nvchad.configs.lspconfig").on_attach
    local on_init = require("nvchad.configs.lspconfig").on_init
    local capabilities = require("nvchad.configs.lspconfig").capabilities

    local lspconfig = require "lspconfig"
    local servers = { "eslint", "tailwindcss", "ts_ls", "intelephense" }

    local function organize_imports()
      local params = {
        command = "_typescript.organizeImports",
        arguments = { vim.api.nvim_buf_get_name(0) },
        title = "",
      }
      vim.lsp.buf.execute_command(params)
    end

    for _, lsp in ipairs(servers) do
      local commands = {}
      local init_options = {}
      local settings = {}

      if lsp == "ts_ls" then
        commands = {
          OrganizeImports = {
            organize_imports,
            description = "Organize Imports",
          },
        }
        init_options = {
          preferences = {
            importModuleSpecifierPreference = "non-relative",
          },
        }
      end

      if lsp == "intelephense" then
        settings = {
          intelephense = {
            environment = {
              includePaths = { home .. "/dev/pmmp/src", home .. "/dev/pmmp/vendor" },
            },
            files = {
              maxSize = 5000000,
            },
          },
        }
      end

      lspconfig[lsp].setup {
        on_attach = on_attach,
        on_init = on_init,
        capabilities = capabilities,
        commands = commands,
        init_options = init_options,
        settings = settings,
      }
    end
  end,
  keys = {
    { "<leader>co", "<cmd>OrganizeImports<cr>", desc = "Organize Imports" },
  },
}
