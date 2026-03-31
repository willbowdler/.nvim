return {
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      "mfussenegger/nvim-dap-python",
    },
    config = function()
      local dap = require("dap")
      local dap_python = require("dap-python")

      local mason_debugpy = vim.fn.stdpath("data") .. "/mason/packages/debugpy/venv/bin/python"
      local python = vim.fn.executable(mason_debugpy) == 1 and mason_debugpy
        or (vim.fn.exepath("python3") ~= "" and vim.fn.exepath("python3") or "python3")

      dap_python.setup(python)

      table.insert(dap.configurations.python, {
        type = "python",
        request = "attach",
        name = "Attach to consigncloud-api (debugpy)",
        connect = { host = "127.0.0.1", port = 5678 },
        justMyCode = false,
        redirectOutput = true,
      })
    end,
  },
  {
    "igorlfs/nvim-dap-view",
    lazy = false,
    opts = {},
  },
}
