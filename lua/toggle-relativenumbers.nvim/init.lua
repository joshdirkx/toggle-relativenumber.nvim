local toggleNumbers = vim.api.nvim_create_augroup('toggleNumbers', { clear = true })

vim.api.nvim_create_autocmd({ 'BufEnter', 'FocusGained', 'InsertLeave', 'WinEnter' }, {
  desc = 'Enable relative line numbers when entering a buffer',
  group = toggleNumbers,
  callback = function ()
    vim.wo.relativenumber = true
  end
})

vim.api.nvim_create_autocmd({ 'BufLeave', 'FocusLost', 'InsertEnter', 'WinLeave' }, {
  desc = 'Remove relative line numbers when leaving a buffer',
  group = toggleNumbers,
  callback = function ()
    vim.wo.relativenumber = false
  end
})

