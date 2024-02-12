-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
--vim.g.vscode_snippets_path = "~/.local/share/nvim/snippets"

vim.g.vscode_snippets_path = "~/.config/nvim/lua/custom/snippets"
vim.g.lua_snippets_path = "~/.config/nvim/lua/custom/snippets/snippets.lua"
vim.opt.relativenumber = true
