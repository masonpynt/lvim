M = {}

M.run_astro_sync = function()
  local output = vim.fn.system "astro sync"
  vim.notify(output, "info", { title = "Astro Sync" })
  vim.cmd "LspRestart"
end

vim.cmd [[command! AstroSync lua require ("user.astro-tools").run_astro_sync()]]

return M
