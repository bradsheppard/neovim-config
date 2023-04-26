vim.g.NERDTreeWinSize = 60
vim.g.NERDTreeShowHidden = 1

vim.keymap.set('n', '<C-\\>', ':NERDTreeToggle<CR>', {silent = true})
vim.keymap.set('n', '<C-k>', ':NERDTreeFind<CR>', {silent = true})

