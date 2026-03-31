return {
  {
    "projekt0n/github-nvim-theme",
    name = "github-theme",
    lazy = false,
    priority = 1000,
    config = function()
      require("github-theme").setup({
        groups = {
          github_dark_high_contrast = {
            Comment = { fg = "#8adda2" },
          },
        },
      })
      vim.cmd("colorscheme github_dark_high_contrast")
    end,
  },
}
