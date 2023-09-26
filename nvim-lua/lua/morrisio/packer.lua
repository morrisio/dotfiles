return require('packer').startup(function()
    use 'wbthomason/packer.nvim'

    -- Basics
    use 'scrooloose/nerdtree'
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use 'tpope/vim-fugitive'
    use 'preservim/vim-pencil'
    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }
    use 'kyazdani42/nvim-web-devicons'

    -- Color schemes
    use 'morhetz/gruvbox'
    use 'pgdouyon/vim-yin-yang'
    use 'cideM/yui'
    use 'Mofiqul/vscode.nvim'
    use 'rose-pine/neovim'
    use 'EdenEast/nightfox.nvim'

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
