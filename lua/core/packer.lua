-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use 'lewis6991/gitsigns.nvim'

    use 'nvim-tree/nvim-web-devicons' 

    use 'romgrk/barbar.nvim'

    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons',
        },
    }

    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use {'ZhiyuanLck/smart-pairs', event = 'InsertEnter', config = function() require('pairs'):setup() end}

    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    use({
        'rose-pine/neovim',
        as = 'rose-pine',
        config = function()
            vim.cmd('colorscheme rose-pine')
        end
    })

    use "sindrets/diffview.nvim"

    -- use {
    --     'paopaol/telescope-git-diffs.nvim',
    --     requires = {
    --         "nvim-lua/plenary.nvim",
    --         "sindrets/diffview.nvim",
    --     },
    -- }
    -- use 'mfussenegger/nvim-dap'
    -- use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }
    use 'folke/neodev.nvim'

    use 'mfussenegger/nvim-lint'

    use({
        "folke/trouble.nvim",
        config = function()
            require("trouble").setup {
                icons = false,
            }
        end
    })

    use { "mxsdev/nvim-dap-vscode-js", requires = {"mfussenegger/nvim-dap"} }

    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,}
        use("nvim-treesitter/playground")
        use("theprimeagen/refactoring.nvim")
        use("mbbill/undotree")
        use("tpope/vim-fugitive")
        use("nvim-treesitter/nvim-treesitter-context");

        use {
            'VonHeikemen/lsp-zero.nvim',
            branch = 'v1.x',
            requires = {
                {'neovim/nvim-lspconfig'},
                {'williamboman/mason.nvim'},
                {'williamboman/mason-lspconfig.nvim'},

                {'hrsh7th/nvim-cmp'},
                {'hrsh7th/cmp-buffer'},
                {'hrsh7th/cmp-path'},
                {'saadparwaiz1/cmp_luasnip'},
                {'hrsh7th/cmp-nvim-lsp'},
                {'hrsh7th/cmp-nvim-lua'},

                {'L3MON4D3/LuaSnip'},
                {'rafamadriz/friendly-snippets'},
            }
        }

        use("folke/zen-mode.nvim")
        use("eandrju/cellular-automaton.nvim")
        use("laytan/cloak.nvim")

    end)
