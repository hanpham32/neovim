-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- 356bc8-- Only required if you have packer configured as `opt`
vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Telescope for fuzzy finding, file browsing, etc.
    -- tag = '0.1.0'
    use {
        'nvim-telescope/telescope.nvim',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    -- Colorschemes
    use({ "rebelot/kanagawa.nvim" })

    -- pretty diagnostics, references, telescope results, quickfix and location lists
    use({
        "folke/trouble.nvim",
        config = function()
            require("trouble").setup {
                icons = false,
            }
        end
    })

    -- Treesitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end, }

    use("nvim-treesitter/playground")               -- treesitter playground for query development
    use("theprimeagen/harpoon")                     -- navigation
    use("theprimeagen/refactoring.nvim")
    use("mbbill/undotree")                          -- visualize undo history
    use("tpope/vim-fugitive")                       -- git integration
    use("nvim-treesitter/nvim-treesitter-context"); -- show code context

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },           -- lsp config
            { 'williamboman/mason.nvim' },         -- lsp installer
            { 'williamboman/mason-lspconfig.nvim' },
            { "jose-elias-alvarez/null-ls.nvim" }, -- lsp diagnostics and actions via lua

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },         -- The completion plugin
            { 'hrsh7th/cmp-buffer' },       -- buffer completions
            { 'hrsh7th/cmp-path' },         -- path completions
            { 'hrsh7th/cmp-cmdline' },      -- cmdline completions
            { 'saadparwaiz1/cmp_luasnip' }, -- snippet completions
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lua' },

            -- Snippets
            { 'L3MON4D3/LuaSnip' }, -- Snippet engine
            { 'rafamadriz/friendly-snippets' },
        }
    }

    use("folke/zen-mode.nvim")             -- distraction free coding
    use("github/copilot.vim")              -- GitHub Copilot
    use("eandrju/cellular-automaton.nvim") -- cellular automation simulation
    use("laytan/cloak.nvim")               -- secret management

    -- File explorer
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- file icons
        },
    }

    -- Code Outline
    use({ "hedyhli/outline.nvim" })

    -- Flutter
    use({ "neoclide/coc.nvim", branch = "release" })
    use("dart-lang/dart-vim-plugin")                                                                        -- Dart language support
    use { 'akinsho/flutter-tools.nvim', requires = { 'nvim-lua/plenary.nvim', 'stevearc/dressing.nvim', } } -- Flutter development tools

    -- Auto-close pairs
    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }

    use { 'numToStr/Comment.nvim', config = function() require('Comment').setup() end }
    use { 'onsails/lspkind.nvim' }
    use { 'windwp/nvim-ts-autotag' }
    use { 'tpope/vim-surround' }
    use { 'rafamadriz/friendly-snippets' }
end)
