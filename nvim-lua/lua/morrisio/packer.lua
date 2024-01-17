return require('packer').startup(function()
    use 'wbthomason/packer.nvim'

    -- Basics
    use {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        requires = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim"
            -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
        }
    }
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use 'tpope/vim-fugitive'
    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }
    use 'kyazdani42/nvim-web-devicons'

    -- Copilot
    use 'github/copilot.vim'

    -- Color schemes
    use 'morhetz/gruvbox'
    use 'pgdouyon/vim-yin-yang'
    use 'cideM/yui'
    use 'Mofiqul/vscode.nvim'
    use 'rose-pine/neovim'

    -- Navigators
    use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
    use 'nvim-lua/plenary.nvim'
    use 'nvim-telescope/telescope.nvim'
    use 'BurntSushi/ripgrep'
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use 'nvim-treesitter/playground'
    use {'ggandor/leap.nvim'}
    use {'stevearc/aerial.nvim'}

    -- LSP/completion
    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'hrsh7th/cmp-cmdline'},
            {'hrsh7th/cmp-nvim-lsp-signature-help'},
            {'hrsh7th/cmp-nvim-lsp-document-symbol'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},
            {'saadparwaiz1/cmp_luasnip'},

            -- Snippets
            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'},
        }
    }

    -- Debugger
    use 'mfussenegger/nvim-dap'
    use 'leoluz/nvim-dap-go'

    -- Golang
    use 'fatih/vim-go'

    -- Rust
    use 'simrat39/rust-tools.nvim'
    end)
