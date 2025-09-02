vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.number = true
vim.o.relativenumber = true
vim.o.cursorline = true
vim.o.cursorlineopt = "number"
vim.o.scrolloff = 4

vim.o.splitbelow = true
vim.o.splitright = true

vim.o.termguicolors = true
vim.o.undofile = true
vim.o.title = true

vim.g.netrw_banner = false
vim.g.netrw_bufsettings = "nu rnu"

vim.g.mapleader = " "
vim.keymap.set({ "n", "v" }, "<leader>y", '"+y')
vim.keymap.set({ "n", "v" }, "<leader>p", '"+p')
vim.keymap.set("n", "<leader>e", "<cmd>Explore<CR>")
vim.keymap.set("n", "<leader>m", "<cmd>write | make<CR>")
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>")

vim.api.nvim_create_autocmd("TextYankPost", {
    group = vim.api.nvim_create_augroup("highlight-yank", { clear = true }),
    callback = function()
        vim.hl.on_yank()
    end,
})

require("paq") {
    "savq/paq-nvim",
    "norcalli/nvim-colorizer.lua",
    "rebelot/kanagawa.nvim",
}

require("colorizer").setup()

require("kanagawa").setup({
    commentStyle = { italic = false },
    keywordStyle = { italic = false },
})
vim.cmd("colorscheme kanagawa-dragon")
vim.cmd("highlight LineNr guibg=None")
vim.cmd("highlight CursorLineNr guibg=None")
vim.cmd("highlight SignColumn guibg=None")
vim.cmd("highlight FoldColumn guibg=None")
