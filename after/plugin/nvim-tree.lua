vim.api.nvim_set_keymap('n', '<leader>pv',
    ':lua (function() vim.cmd(":bd"); vim.cmd(":NvimTreeFindFile"); end)()<CR>',
    { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>ee', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>ef', ':NvimTreeFocus<CR>', { noremap = true, silent = true })

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 0
vim.g.loaded_netrwPlugin = 0

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup({
    sort = {
        sorter = "case_sensitive",
    },
    view = {
        width = 30,
    },
    renderer = {
        group_empty = true,
    },
    filters = {
        dotfiles = false,
        custom = {'^.git$'}
    },
    disable_netrw = true,
    git = {
        enable = true,
        ignore = false,
        timeout = 400,
    },
})
