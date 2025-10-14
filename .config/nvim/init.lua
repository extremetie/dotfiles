vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.scrolloff = 4
vim.opt.list = true
vim.opt.listchars = { tab = '→ ', trail = '·', nbsp = '␣' }
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = 'no'
vim.opt.winborder = 'single'
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.undofile = true
vim.opt.title = true

vim.lsp.enable({ 'clangd', 'pylsp' })
vim.diagnostic.config({ virtual_text = true })

vim.g.mapleader = ' '
vim.keymap.set({ 'n', 'v' }, '<leader>d', '"_d')
vim.keymap.set({ 'n', 'v' }, '<leader>y', '"+y')
vim.keymap.set('n', '<Esc>', '<cmd>set hlsearch!<CR>')
vim.keymap.set('n', '<M-h>', '<cmd>vertical resize -1<CR>')
vim.keymap.set('n', '<M-j>', '<cmd>resize +1<CR>')
vim.keymap.set('n', '<M-k>', '<cmd>resize -1<CR>')
vim.keymap.set('n', '<M-l>', '<cmd>vertical resize +1<CR>')
vim.keymap.set('n', '<leader>a', '<cmd>edit #<CR>')
vim.keymap.set('n', '<leader>v', '<cmd>edit $MYVIMRC<CR>')
vim.keymap.set('n', '<leader>w', '<cmd>update<CR>')
vim.keymap.set('n', '<leader>q', '<cmd>update | bdelete<CR>')
vim.keymap.set('n', '<leader>m', '<cmd>update | make<CR>')
vim.keymap.set('n', '<leader>o', '<cmd>update | source<CR>')
vim.keymap.set('n', '<leader>e', '<cmd>Oil<CR>')
vim.keymap.set('n', '<leader>f', '<cmd>Pick files<CR>')
vim.keymap.set('n', '<leader>g', '<cmd>Pick grep_live<CR>')
vim.keymap.set('n', '<leader>r', '<cmd>Pick buffers<CR>')
vim.keymap.set('n', '<leader>h', '<cmd>Pick help<CR>')

require('paq') {
    'neovim/nvim-lspconfig',
    'stevearc/oil.nvim',
    'nvim-mini/mini.pick',
    'nvim-mini/mini.pairs',
    'nvim-mini/mini.icons',
    'rebelot/kanagawa.nvim',
    'savq/paq-nvim',
}

require('oil').setup({ view_options = { show_hidden = true } })
require('mini.pick').setup()
require('mini.pairs').setup()
require('mini.icons').setup()

require('kanagawa').setup({
    commentStyle = { italic = false },
    keywordStyle = { italic = false },
})
vim.cmd('colorscheme kanagawa-dragon')
vim.cmd('highlight LineNr guibg=None')
vim.cmd('highlight CursorLineNr guibg=None')
vim.cmd('highlight FoldColumn guibg=None')
