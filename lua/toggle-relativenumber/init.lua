local toggleRelativenumber = vim.api.nvim_create_augroup('toggleRelativenumber', { clear = true })

vim.api.nvim_create_autocmd({ 'BufEnter', 'FocusGained', 'InsertLeave', 'WinEnter' }, {
  desc = 'Enable relative line numbers when entering a buffer',
  group = toggleRelativenumber,
  callback = function ()
    vim.wo.relativenumber = true
  end
})

vim.api.nvim_create_autocmd({ 'BufLeave', 'FocusLost', 'InsertEnter', 'WinLeave' }, {
  desc = 'Remove relative line numbers when leaving a buffer',
  group = toggleRelativenumber,
  callback = function ()
    vim.wo.relativenumber = false
  end
})

