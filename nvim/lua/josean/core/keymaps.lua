-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps
---------------------

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>")

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>") -- increment
keymap.set("n", "<leader>-", "<C-x>") -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab

----------------------
-- Plugin Keybinds
----------------------

-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- toggle split window maximization

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- toggle file explorer

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags

-- telescope git commands (not on youtube nvim video)
keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<cr>") -- list all git commits (use <cr> to checkout) ["gc" for git commits]
keymap.set("n", "<leader>gfc", "<cmd>Telescope git_bcommits<cr>") -- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>") -- list git branches (use <cr> to checkout) ["gb" for git branch]
keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<cr>") -- list current changes per file with diff preview ["gs" for git status]

-- restart lsp server (not on youtube nvim video)
keymap.set("n", "<leader>rs", ":LspRestart<CR>") -- mapping to restart lsp if necessary

-- keymap.set("n", "<leader>q", "<C-w>h")
-- keymap.set("n", "<leader>w", "<C-w>l")
-- keymap.set("n", "<leader>z", "<C-w>j")
-- keymap.set("n", "<leader>a", "<C-w>k")
--Make adjusing split sizes a bit more friendly
--keymap.set("n", "<leader>y", ":vertical resize +2<Cr>")
--keymap.set("n", "<leader>u", ":vertical resize -2<Cr>")
keymap.set("n", "<leader><right>", ":vertical resize -2<Cr>")
keymap.set("n", "<leader><left>", ":vertical resize +2<Cr>")
keymap.set("n", "<leader><up>", ":resize +2<Cr>")
keymap.set("n", "<leader><down>", ":resize -2<Cr>")

-- run file with nodejs and python
keymap.set("n", "<leader>rq", ":w<Cr> :!node %<Cr>")
keymap.set("n", "<leader>rp", "!w<Cr> :!python3 %<Cr>")

-- save and quit
keymap.set("n", "<leader>w", ":w<Cr>")
keymap.set("n", "<leader>q", ":q<Cr>")

-- Bufferline
keymap.set("n", "<leader>bv", ":bNext<Cr>")
keymap.set("n", "<leader>bb", ":BufferLinePick<Cr>")
keymap.set("n", "<leader>bn", ":bNext<Cr>")
keymap.set("n", "<leader>bc", ":BufferLinePickClose<Cr>")
keymap.set("n", "<leader>bh", ":BufferLineCloseLeft<Cr>")
keymap.set("n", "<leader>bl", ":BufferLineCloseRight<Cr>")
