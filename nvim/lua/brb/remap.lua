vim.g.mapleader = ","
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set('n', '<leader>,', '<cmd>AerialToggle!<CR>')
vim.keymap.set('n', 'gd', "<Cmd>lua vim.lsp.buf.definition()<CR>")
vim.keymap.set('', 'gf', ':e <cfile><cr>')

