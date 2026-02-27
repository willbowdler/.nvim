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
