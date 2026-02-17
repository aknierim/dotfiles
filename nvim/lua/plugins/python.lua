return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        pylsp = {
          settings = {
            pylsp = {
              plugins = {
                -- Disable pylsp's built-in linters
                pycodestyle = { enabled = false },
                pyflakes = { enabled = false },
                mccabe = { enabled = false },
                autopep8 = { enabled = false },
                yapf = { enabled = false },
                -- let ruff handle everything
                ruff = { enabled = true },
                -- jedi autocompletion stuff and env detection
                jedi = {
                  environment = vim.fn.exepath("python"),
                },
                jedi_completion = { enabled = true, fuzzy = true },
                jedi_hover = { enabled = true },
                jedi_references = { enabled = true },
                jedi_signature_help = { enabled = true },
                jedi_symbols = { enabled = true },
              },
            },
          },
        },
        ty = {
          settings = {
            ty = {
              diagnosticMode = "workspace",
            },
          },
        },
      },
    },
    init = function()
      vim.keymap.set("n", "<leader>ct", function()
        local clients = vim.lsp.get_clients({ name = "ty" })
        if #clients > 0 then
          for _, client in ipairs(clients) do
            client:stop()
          end
          LazyVim.info("ty disabled", { title = "LSP" })
        else
          vim.cmd("LspStart ty")
          LazyVim.info("ty enabled", { title = "LSP" })
        end
      end, { desc = "Toggle ty" })
    end,
  },
}
