-- plugins --
--lvim.plugins = {
--{"lambdalisue/suda.vim"}
--}
-- w!! --
reload "user.plugins"
reload "user.options"
vim.cmd [[noreabbrev <expr> w!! (getcmdtype() == ':' && getcmdline() == 'w!!') ? 'SudaWrite' : 'w!!']]
