vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "yamlls" })

local path = vim.api.nvim_buf_get_name(0)
local parts = vim.split(path, "/")
local filename = parts[#parts]

if string.find(filename, "ansible") then
  require("lvim.lsp.manager").setup("ansiblels", {})
else
  require("lvim.lsp.manager").setup("yamlls", {})
end

