vim.o.expandtab = true
vim.o.shiftwidth = 4
vim.o.tabstop = 4
vim.o.list = true
vim.o.listchars = 'tab:→ ,trail:·,nbsp:␣'
vim.o.scrolloff = 4
vim.o.number = true
vim.o.relativenumber = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.termguicolors = true
vim.o.title = true
vim.o.undofile = true
vim.g.mapleader = ' '

vim.keymap.set({ 'n', 'v' }, '<leader>d', '"_d')
vim.keymap.set({ 'n', 'v' }, '<leader>p', '"+p')
vim.keymap.set({ 'n', 'v' }, '<leader>y', '"+y')
vim.keymap.set('n', '<leader>m', '<cmd>write|make<CR>')
vim.keymap.set('n', '<leader>s', '<cmd>write|source<CR>')
vim.keymap.set('n', '<Esc>', '<cmd>set hlsearch!<CR>')

vim.keymap.set('n', '<leader>e', '<cmd>Oil<CR>')

require('oil').setup({
    view_options = { show_hidden = true },
})

require('mini.pairs').setup()

require('kanagawa').setup({
    commentStyle = { italic = false },
    keywordStyle = { italic = false },
})
vim.cmd('colorscheme kanagawa-dragon')
vim.cmd('highlight LineNr guibg=None')
vim.cmd('highlight CursorLineNr guibg=None')
vim.cmd('highlight SignColumn guibg=None')
vim.cmd('highlight FoldColumn guibg=None')

require('paq') {
    'stevearc/oil.nvim',
    'nvim-mini/mini.pairs',
    'rebelot/kanagawa.nvim',
    'savq/paq-nvim',
}
