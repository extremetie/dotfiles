vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.scrolloff = 4
vim.opt.list = true
vim.opt.listchars = { tab = '→ ', trail = '·', nbsp = '␣' }
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = 'no'
vim.opt.winborder = 'single'
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.undofile = true
vim.opt.title = true

vim.lsp.enable({ 'clangd', 'rust_analyzer', 'pylsp' })
vim.diagnostic.config({ virtual_text = true })

vim.g.mapleader = ' '
vim.keymap.set({ 'n', 'v' }, '<leader>d', '"_d')
vim.keymap.set({ 'n', 'v' }, '<leader>y', '"+y')
vim.keymap.set('n', '<leader>m', '<cmd>update | make<CR>')
vim.keymap.set('n', '<leader>o', '<cmd>update | source<CR>')
vim.keymap.set('n', '<leader>v', '<cmd>edit $MYVIMRC<CR>')
vim.keymap.set('n', '<leader>e', '<cmd>Oil<CR>')
vim.keymap.set('n', '<leader>f', '<cmd>Pick files<CR>')
vim.keymap.set('n', '<leader>g', '<cmd>Pick grep_live<CR>')
vim.keymap.set('n', '<leader>r', '<cmd>Pick buffers<CR>')
vim.keymap.set('n', '<leader>h', '<cmd>Pick help<CR>')

require('paq') {
    'neovim/nvim-lspconfig',
    'stevearc/oil.nvim',
    'nvim-mini/mini.pick',
    'nvim-mini/mini.icons',
    'rebelot/kanagawa.nvim',
    'savq/paq-nvim',
}

require('oil').setup({
    columns = { 'permissions', 'size', 'mtime', 'icon' },
    view_options = { show_hidden = true },
    skip_confirm_for_simple_edits = true,
    delete_to_trash = true,
})

require('mini.pick').setup()
require('mini.icons').setup()

require('kanagawa').setup({
    commentStyle = { italic = false },
    keywordStyle = { italic = false },
})
vim.cmd('colorscheme kanagawa-dragon')
vim.cmd('highlight LineNr guibg=None')
vim.cmd('highlight CursorLineNr guibg=None')
vim.cmd('highlight FoldColumn guibg=None')
