return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        eslint = {
          settings = {
            run = "onSave",
          },
        },
        cssls = {
          root_dir = function(fname)
            return require("lspconfig.util").root_pattern("yarn.lock", ".git")(fname)
          end,
        },
      },
    },
  },
}
