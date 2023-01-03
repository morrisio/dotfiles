return require('packer').startup(function()
    use 'wbthomason/packer.nvim'

    -- Basics
    use 'vim-airline/vim-airline'
    use 'scrooloose/nerdtree'
    use 'tpope/vim-fugitive'
    use 'preservim/vim-pencil'
    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }

    -- Color schemes
    use 'morhetz/gruvbox'
    use 'ajmwagar/vim-deus'
    use 'preservim/vim-colors-pencil'
    use 'rainglow/vim'

    -- Navigators
    use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
    use 'nvim-lua/plenary.nvim'
    use 'nvim-telescope/telescope.nvim'
    use 'BurntSushi/ripgrep'
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use 'nvim-treesitter/playground'
    use {'ggandor/leap.nvim'}

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

        -- Golang
        use 'fatih/vim-go'

        -- Rust
        use 'simrat39/rust-tools.nvim'
    end)
