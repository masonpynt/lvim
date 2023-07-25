-- Define comment string
local comment_string = "# %s"

-- Get buffer number for current buffer
local current_buffer = vim.api.nvim_get_current_buf()

-- Set commentstring option for buffer
vim.api.nvim_buf_set_option(current_buffer, "commentstring", comment_string)
