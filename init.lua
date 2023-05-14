vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.termguicolors = true
vim.o.mouse = 'a'

vim.o.t_Co = 256
--vim.o.background = 'dark'

vim.wo.relativenumber = true
vim.wo.number = true

require('plugins')
require('treesitter')
require('coc')
require('nerdtree')
require('airline')
require('nvim-dap')
require('nvim-dap-ui')
require('fzf')

vim.g.python3_host_prog = '/home/brad/.pyenv/shims/python3'

vim.cmd("filetype on")
vim.cmd("filetype plugin on")
vim.cmd("filetype indent on")

vim.cmd("syntax on")
vim.cmd("colorscheme rose-pine")

vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none"})
vim.api.nvim_set_hl(0, "NormalNC", {bg = "none"})
vim.api.nvim_set_hl(0, "NormalSB", {bg = "none"})

vim.keymap.set('n', '<leader>n', ':bn<cr>', {silent = true})
vim.keymap.set('n', '<leader>p', ':bp<cr>', {silent = true})
vim.keymap.set('n', '<leader>d', ':bd<cr>', {silent = true})

