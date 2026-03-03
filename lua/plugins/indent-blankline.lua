return {
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = function()
      local highlight = {
        "RainbowRed",
        "RainbowYellow",
        "RainbowBlue",
        "RainbowOrange",
        "RainbowGreen",
        "RainbowViolet",
        "RainbowCyan",
      }

      local hooks = require("ibl.hooks")
      -- create the highlight groups in the highlight setup hook, so they are reset
      -- every time the colorscheme changes
      hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
        vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#8A6B70" })
        vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#8E8468" })
        vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#6F8394" })
        vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#8B7761" })
        vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#768A73" })
        vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#7F6F91" })
        vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#6A878A" })
      end)

      return {
        indent = { highlight = highlight, char = "┆" },
      }
    end,
  },
}
