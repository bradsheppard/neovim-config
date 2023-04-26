dapui = require("dapui")
dapui.setup()

vim.keymap.set('n', '<Leader>duo', dapui.open)
vim.keymap.set('n', '<Leader>duc', dapui.close)

