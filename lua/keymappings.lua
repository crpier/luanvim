-- Leader key and leader keymaps
vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', { noremap = true, silent = true })
vim.g.mapleader = ' '
vim.api.nvim_set_keymap('n', '<Leader>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
-- Window movement with arrows
vim.api.nvim_set_keymap('n', '<Left>', '<C-w>h', {silent = true})
vim.api.nvim_set_keymap('n', '<Down>', '<C-w>j', {silent = true})
vim.api.nvim_set_keymap('n', '<Up>', '<C-w>k', {silent = true})
vim.api.nvim_set_keymap('n', '<Right>', '<C-w>l', {silent = true})
-- resize with ctrl+arrows -- haha mac users cry
vim.api.nvim_set_keymap('n', '<C-Up>', ':resize -2<CR>', {silent = true})
vim.api.nvim_set_keymap('n', '<C-Down>', ':resize +2<CR>', {silent = true})
vim.api.nvim_set_keymap('n', '<C-Left>', ':vertical resize -2<CR>', {silent = true})
vim.api.nvim_set_keymap('n', '<C-Right>', ':vertical resize +2<CR>', {silent = true})
-- Exit insert mode easily
vim.api.nvim_set_keymap('i', 'jk', '<ESC>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('i', 'jw', '<ESC>:w<CR>', {noremap = true, silent = true})
-- Create newlines
vim.api.nvim_set_keymap('n', 'go', 'o<Esc>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'gO', 'O<Esc>', { noremap = true, silent = true })
-- I don't use EX mode, and I keep pressing it by mistake when I want to quit
vim.api.nvim_set_keymap('n', 'Q', 'ZQ', { noremap = true, silent = true })
-- Use tab to switch buffers -- TODO maybe remove
vim.api.nvim_set_keymap('n', '<TAB>', ':bnext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<S-TAB>', ':bprev<CR>', { noremap = true, silent = true })
-- Exit term easy
vim.api.nvim_set_keymap('t', '<C-\\>', '<C-\\><C-n>', { noremap = true, silent = true })
-- Press Esc in noremal mode to make highlighting go away
vim.api.nvim_set_keymap('n', '<Esc>', '<Cmd>nohlsearch<CR>', { noremap = true, silent = true })
