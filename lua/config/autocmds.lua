-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- vim.api.nvim_create_autocmd("BufEnter", "*", [[lua EnableBlameLine()]])

-- vim.api.nvim_create_autocmd({ "BufEnter" }, { "*", [[lua EnableBlameLine()]] })

-- autocmd BufEnter * lua EnableBlameLine()

-- vim.api.nvim_create_autocmd("BufEnter", {
--   -- group = augroup("enable_blame_line"),
--   callback = function()
--     vim.cmd("EnableBlameLine")
--   end,
-- })
