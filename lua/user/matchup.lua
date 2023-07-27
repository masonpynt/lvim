vim.g.matchup_matchparen_offscreen = { method = nil }
vim.g.matchup_matchpref = { html = { nolists = 1 } }
lvim.builtin.treesitter.matchup.enable = { "astro" }
lvim.builtin.treesitter.matchup.disable = { "lua" }
vim.cmd [[
augroup matchup_matchparen_disable_ft
  autocmd!
  autocmd FileType lua let [b:matchup_matchparen_fallback,
      \ b:matchup_matchparen_enabled] = [0, 0]
augroup end
]]
