return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        volar = {
          filetypes = { "vue" },
          init_options = {
            typescript = {
              tsdk = vim.fn.expand(
                "~/.local/share/nvim/mason/packages/typescript-language-server/node_modules/typescript/lib"
              ),
            },
          },
          -- prevent timeouts on large files
          flags = { debounce_text_changes = 150 },
          on_attach = function(client, bufnr)
            -- disable formatting if you use prettier
            client.server_capabilities.documentFormattingProvider = false
          end,
        },
      },
    },
  },
}
