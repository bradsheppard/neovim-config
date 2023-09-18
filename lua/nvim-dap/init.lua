dap = require('dap')
dap_python = require('dap-python')
dap_go = require('dap-go')

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
dap_go.setup()

vim.keymap.set('n', '<Leader>dpm', dap_python.test_method, { silent = true })
vim.keymap.set('n', '<Leader>dpc', dap_python.test_class, { silent = true })

vim.keymap.set('n', '<Leader>dgm', dap_go.debug_test, { silent = true })

dap.adapters.lldb = {
  type = 'executable',
  command = 'lldb-vscode-14', -- adjust as needed, must be absolute path
  name = 'lldb'
}

dap.configurations.rust = {
  {
    name = 'Launch',
    type = 'lldb',
    request = 'launch',
    program = function()
        return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    cwd = '${workspaceFolder}',
    stopOnEntry = false,
    args = {},
  },
}
