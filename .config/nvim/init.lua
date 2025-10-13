vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.list = true
vim.opt.listchars = { tab = '→ ', trail = '·', nbsp = '␣' }
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 4
vim.opt.path:append('**')
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.undofile = true
vim.opt.title = true

vim.g.mapleader = ' '
vim.keymap.set({ 'n', 'v' }, '<leader>d', '"_d')
vim.keymap.set({ 'n', 'v' }, '<leader>p', '"+p')
vim.keymap.set({ 'n', 'v' }, '<leader>y', '"+y')
vim.keymap.set('n', '<leader>e', '<cmd>Oil<CR>')
vim.keymap.set('n', '<leader>w', '<cmd>update<CR>')
vim.keymap.set('n', '<leader>q', '<cmd>update | bdelete<CR>')
vim.keymap.set('n', '<leader>m', '<cmd>update | make<CR>')
vim.keymap.set('n', '<leader>o', '<cmd>update | source<CR>')
vim.keymap.set('n', '<Esc>', '<cmd>set hlsearch!<CR>')

require('paq') {
    'savq/paq-nvim',
    'stevearc/oil.nvim',
    'nvim-mini/mini.pairs',
    'nvim-mini/mini.icons',
    'rebelot/kanagawa.nvim',
}

require('oil').setup({
    view_options = { show_hidden = true },
})
require('mini.pairs').setup()
require('mini.icons').setup()
require('kanagawa').setup({
    commentStyle = { italic = false },
    keywordStyle = { italic = false },
})
vim.cmd('colorscheme kanagawa-dragon')
vim.cmd('highlight LineNr guibg=None')
vim.cmd('highlight CursorLineNr guibg=None')
vim.cmd('highlight SignColumn guibg=None')
vim.cmd('highlight FoldColumn guibg=None')
