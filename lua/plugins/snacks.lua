return {
  "folke/snacks.nvim",
  opts = {
    scroll = {
      enabled = false, -- Disable scrolling animations
    },
    terminal = {
      win = {
        position = "float",
        height = 0,
        width = 0,
      },
    },
    picker = {
      sources = {
        explorer = {
          hidden = true,
          ignored = true,
        },
        files = {
          hidden = true,
        },
        grep = {
          hidden = true,
          regex = false,
        },
      },
    },
  },
}
