return {
  "shortcuts/no-neck-pain.nvim",
  version = "*",
  lazy = false,
  opts = {
    width = 120,
    autocmds = {
      enableOnVimEnter = "safe",
    },
  },
  keys = {
    { "<leader>z", "<cmd>NoNeckPain<cr>", desc = "Toggle Centered Layout" },
  },
}
