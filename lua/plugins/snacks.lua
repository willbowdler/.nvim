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
          win = {
            list = {
              wo = {
                number = true,
                relativenumber = true,
              },
            },
          },
          layout = {
            preset = "sidebar",
            fullscreen = true,
            preview = false,
            hidden = { "input" },
          },
        },
        files = {
          hidden = false,
          ignored = false,
          exclude = { "**/node_modules/**", "**/dist/**", "**/__pycache__/**", "**/*.pyc" },
        },
        grep = {
          hidden = false,
          ignored = false,
          regex = false,
          exclude = { "**/node_modules/**", "**/dist/**", "**/__pycache__/**", "**/*.pyc" },
        },
      },
    },
  },
}
