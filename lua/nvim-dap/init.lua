dap = require('dap')
dap_python = require('dap-python')

vim.keymap.set('n', '<F5>', dap.continue)
vim.keymap.set('n', '<F10>', dap.step_over)
vim.keymap.set('n', '<F11>', dap.step_into)
vim.keymap.set('n', '<F12>', dap.step_out)
vim.keymap.set('n', '<Leader>b', dap.toggle_breakpoint, { silent = true })
vim.keymap.set('n', '<Leader>c', dap.clear_breakpoints, { silent = true })
vim.keymap.set('n', '<Leader>B', function() dap.set_breakpoint(vim.fn.input('Breakpoint condition: ')) end, { silent = true })
vim.keymap.set('n', '<Leader>lp', function() dap.set_breakpoint(nil, nil, vim.fn.input('Log point message: ')) end, { silent = true })
vim.keymap.set('n', '<Leader>dr', dap.repl.open, { silent = true })
vim.keymap.set('n', '<Leader>dl', dap.run_last, { silent = true })

--dap_python.setup('/home/brad/.pyenv/shims/python')
dap_python.test_runner = 'pytest'
dap_python.setup('~/.virtualenvs/debugpy/bin/python')

vim.keymap.set('n', '<Leader>dpm', dap_python.test_method, { silent = true })
vim.keymap.set('n', '<Leader>dpc', dap_python.test_class, { silent = true })
