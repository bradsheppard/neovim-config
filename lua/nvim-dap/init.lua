dap = require('dap')
dap_python = require('dap-python')

vim.keymap.set('n', '<silent> <F5>', dap.continue)
vim.keymap.set('n', '<silent> <F10>', dap.step_over)
vim.keymap.set('n', '<silent> <F11>', dap.step_into)
vim.keymap.set('n', '<silent> <F12>', dap.step_out)
vim.keymap.set('n', '<silent> <Leader>b', dap.toggle_breakpoint)
vim.keymap.set('n', '<silent> <Leader>B', function() dap.set_breakpoint(vim.fn.input('Breakpoint condition: ')) end)
vim.keymap.set('n', '<silent> <Leader>lp', function() dap.set_breakpoint(nil, nil, vim.fn.input('Log point message: ')) end)
vim.keymap.set('n', '<silent> <Leader>dr', dap.repl.open)
vim.keymap.set('n', '<silent> <Leader>dl', dap.run_last)

dap_python.setup('/home/brad/.pyenv/shims/python')

