return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- Remove typescript-language-server and use vtsls instead
        vtsls = {
          settings = {
            typescript = {
              tsserver = {
                maxTsServerMemory = 4096,
              },
            },
          },
        },
      },
      -- Optional: remove the old tsserver setup if it exists
      setup = {
        tsserver = function()
          return true -- disables tsserver
        end,
      },
    },
  },
}
