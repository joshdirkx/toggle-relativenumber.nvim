local function enable_number_relativenumber_current_buffer()
  vim.api.nvim_command([[autocmd BufLeave,WinLeave,TabLeave * setlocal norelativenumber]])
  vim.api.nvim_command([[autocmd BufEnter,WinEnter,TabEnter * setlocal number relativenumber]])
end

enable_number_relativenumber_current_buffer()

return {
  enable_number_relativenumber_current_buffer = enable_number_relativenumber_current_buffer,
}
