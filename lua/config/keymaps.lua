-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Restore native Vim substitute behavior for s/S (disable flash.nvim defaults)
pcall(vim.keymap.del, { "n", "x", "o" }, "s")
pcall(vim.keymap.del, { "n", "x", "o" }, "S")

-- Navigate vim panes better
vim.keymap.set("n", "<c-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")

-- Save current file
vim.keymap.set("n", "<leader>w", "<cmd>w<cr>", { desc = "Save File" })

-- DAP
vim.keymap.set("n", "<leader>dd", function()
  local dap = require("dap")
  if dap.session() then
    dap.terminate()
  else
    dap.run({
      type = "python",
      request = "attach",
      name = "Attach to consigncloud-api (debugpy)",
      redirectOutput = true,
      connect = { host = "127.0.0.1", port = 5678 },
      justMyCode = false,
    })
  end
end, { desc = "Debug Toggle" })
vim.keymap.set("n", "<leader>dl", function()
  require("dap").continue()
end, { desc = "Debug Continue" })
vim.keymap.set("n", "<leader>dh", function()
  require("dap").step_over()
end, { desc = "Debug Step Over" })
vim.keymap.set("n", "<leader>dj", function()
  require("dap").step_into()
end, { desc = "Debug Step Into" })
vim.keymap.set("n", "<leader>dk", function()
  require("dap").step_out()
end, { desc = "Debug Step Out" })
vim.keymap.set("n", "<leader>db", function()
  require("dap").toggle_breakpoint()
end, { desc = "Debug Toggle Breakpoint" })
vim.keymap.set("n", "<leader>dB", function()
  require("dap").clear_breakpoints()
end, { desc = "Debug Clear Breakpoints" })
vim.keymap.set("n", "<leader>dr", function()
  require("dap").repl.open()
end, { desc = "Debug Open REPL" })
vim.keymap.set("n", "<leader>dv", "<cmd>DapViewToggle<cr>", { desc = "Debug View Toggle" })

-- Terminal
vim.keymap.set("n", "<leader>t", function()
  Snacks.terminal(nil, { cwd = vim.uv.cwd() })
end, { desc = "Terminal (Root Dir)" })
vim.keymap.set({ "n", "t" }, "<c-/>", function()
  Snacks.terminal.focus(nil, { cwd = vim.uv.cwd() })
end, { desc = "Terminal (Root Dir)" })
vim.keymap.set({ "n", "t" }, "<c-_>", function()
  Snacks.terminal.focus(nil, { cwd = LazyVim.root() })
end, { desc = "which_key_ignore" })

-- File path / projects
vim.keymap.set("n", "<leader>fp", function()
  local path = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(0), ":.")
  vim.fn.setreg("+", path)
  vim.notify(path, vim.log.levels.INFO, { title = "Copied Relative Path" })
end, { desc = "Copy Relative Path" })

vim.keymap.set("n", "<leader>fP", function()
  Snacks.picker.projects()
end, { desc = "Projects" })

vim.keymap.set("n", "<leader>fA", function()
  Snacks.picker.files({ hidden = true, ignored = true })
end, { desc = "Find All Files" })

vim.keymap.set("n", "<leader>sA", function()
  Snacks.picker.grep({ hidden = true, ignored = true })
end, { desc = "Grep All Files" })

-- Marks
vim.keymap.set("n", "<leader>md", "<cmd>delmarks!<cr>", { desc = "Delete Buffer Marks" })
vim.keymap.set("n", "<leader>mD", "<cmd>delmarks a-z<cr>", { desc = "Delete Global Marks" })
