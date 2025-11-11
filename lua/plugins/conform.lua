return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        vue = { "prettierd", "prettier" },
        javascript = { "prettierd", "prettier" },
        typescript = { "prettierd", "prettier" },
        html = { "prettierd", "prettier" },
        css = { "prettierd", "prettier" },
        json = { "prettierd", "prettier" },
        yaml = { "prettierd", "prettier" },
      },
      format_on_save = function(bufnr)
        -- Disable autoformat for files in node_modules
        if vim.bo[bufnr].filetype == "vue" or vim.bo[bufnr].filetype == "javascript" then
          return true
        end
      end,
    },
  },
}
