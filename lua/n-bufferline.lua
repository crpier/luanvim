require"bufferline".setup{
    options = {
        numbers = "ordinal"
    }
}


vim.api.nvim_set_keymap('n', ']b', ':BufferLineCycleNext<CR>', { noremap = true})
vim.api.nvim_set_keymap('n', '[b', ':BufferLineCyclePrev<CR>', { noremap = true})

vim.api.nvim_set_keymap('n', ']m', ':BufferLineMoveNext<CR>', { noremap = true})
vim.api.nvim_set_keymap('n', '[m', ':BufferLineMovePrev<CR>', { noremap = true})
