-- plugins --
lvim.plugins = {
{"lambdalisue/suda.vim"}
}
-- w!! --
vim.cmd [[noreabbrev <expr> w!! (getcmdtype() == ':' && getcmdline() == 'w!!') ? 'SudaWrite' : 'w!!']]
