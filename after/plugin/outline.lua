-- Key mapping to toggle the outline
vim.keymap.set("n", "<leader>o", "<cmd>Outline<CR>", { desc = "Toggle Outline" })

-- Setup call for the outline
require("outline").setup {
    -- Configuration options go here
    -- Leave empty to use default settings or customize as needed
}
