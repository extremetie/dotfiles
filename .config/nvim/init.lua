vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

vim.o.list = true
vim.o.listchars = 'tab:→ ,trail:·,nbsp:␣'

vim.o.number = true
vim.o.relativenumber = true

vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.splitbelow = true
vim.o.splitright = true

vim.o.scrolloff = 4
vim.o.termguicolors = true
vim.o.undofile = true
vim.o.title = true

vim.g.mapleader = ' '
vim.keymap.set({ 'n', 'v' }, '<leader>y', "'+y")
vim.keymap.set({ 'n', 'v' }, '<leader>p', "'+p")
vim.keymap.set('n', '<leader>e', '<cmd>Oil<CR>')
vim.keymap.set('n', '<leader>m', '<cmd>write | make<CR>')
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>')

vim.api.nvim_create_autocmd('TextYankPost', {
    group = vim.api.nvim_create_augroup('highlight-yank', { clear = true }),
    callback = function()
        vim.hl.on_yank()
    end,
})

require('paq') {
    'stevearc/oil.nvim',
    'nvim-mini/mini.icons',
    'windwp/nvim-autopairs',
    'norcalli/nvim-colorizer.lua',
    'rebelot/kanagawa.nvim',
    'savq/paq-nvim',
}

require('oil').setup({
    view_options = { show_hidden = true },
})
require('mini.icons').setup()

require('nvim-autopairs').setup()
require('colorizer').setup()

require('kanagawa').setup({
    commentStyle = { italic = false },
    keywordStyle = { italic = false },
})
vim.cmd('colorscheme kanagawa-dragon')
vim.cmd('highlight LineNr guibg=None')
vim.cmd('highlight CursorLineNr guibg=None')
vim.cmd('highlight SignColumn guibg=None')
vim.cmd('highlight FoldColumn guibg=None')
