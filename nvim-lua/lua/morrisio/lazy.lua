return require('lazy').setup({
    -- Basics
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim"
            -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
        }
    },
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'kyazdani42/nvim-web-devicons', opt = true }
    },
    'tpope/vim-fugitive',
    {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    },
    'kyazdani42/nvim-web-devicons',

    -- Color schemes
    'morhetz/gruvbox',
    'pgdouyon/vim-yin-yang',
    'cideM/yui',
    'Mofiqul/vscode.nvim',
    'rainglow/vim',

    -- Navigators
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope.nvim',
    'BurntSushi/ripgrep',
    { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },
    'nvim-treesitter/playground',
    'ggandor/leap.nvim',

    -- LSP/completion
    {
        'VonHeikemen/lsp-zero.nvim',
        dependencies = {
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
    },

    -- Copilot
    'github/copilot.vim',

    -- Golang
    'fatih/vim-go',
})
