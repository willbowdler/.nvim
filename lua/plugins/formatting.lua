return {
  {
    "stevearc/conform.nvim",
    opts = {
      default_format_opts = {
        lsp_format = "never",
        timeout_ms = 300,
      },
      formatters_by_ft = {
        javascript = { "prettierd", "prettier", stop_after_first = true },
        javascriptreact = { "prettierd", "prettier", stop_after_first = true },
        typescript = { "prettierd", "prettier", stop_after_first = true },
        typescriptreact = { "prettierd", "prettier", stop_after_first = true },
        css = { "prettierd", "prettier", stop_after_first = true },
      },
    },
  },
}
