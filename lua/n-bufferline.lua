require"bufferline".setup{
    options = {
        numbers = "buffer_id"
    }
}


vim.api.nvim_set_keymap('n', ']b', ':BufferLineCycleNext<CR>', { noremap = true})
vim.api.nvim_set_keymap('n', '[b', ':BufferLineCyclePrev<CR>', { noremap = true})

vim.api.nvim_set_keymap('n', 'g>', ':BufferLineMoveNext<CR>', { noremap = true})
vim.api.nvim_set_keymap('n', 'g<', ':BufferLineMovePrev<CR>', { noremap = true})
