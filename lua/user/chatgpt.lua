require("chatgpt").setup {

}

local opts = { noremap = true, silent = true }

local keymap = vim.keymap.set

keymap("n", "<c-p>", "<cmd>ChatGPT<cr>", opts)

-- <C-c> to close chat window.
-- <C-u> scroll up chat window.
-- <C-d> scroll down chat window.
-- <C-y> to copy/yank last answer.
-- <C-o> Toggle settings window.
-- <C-n> Start new session.
-- <Tab> Cycle over windows.
-- <C-i> [Edit Window] use response as input.
