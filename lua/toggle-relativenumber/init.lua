local function enable_number_relativenumber_current_buffer()
  vim.api.nvim_win_set_option(0, 'number', true)
  vim.api.nvim_win_set_option(0, 'relativenumber', true)

  vim.api.nvim_command([[autocmd BufLeave,WinLeave,TabLeave * setlocal norelativenumber]])
end

enable_number_relativenumber_current_buffer()

return {
  enable_number_relativenumber_current_buffer = enable_number_relativenumber_current_buffer,
}
