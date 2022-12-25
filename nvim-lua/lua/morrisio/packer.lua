return require('packer').startup(function()
	use 'wbthomason/packer.nvim'

    -- Basics
	use 'vim-airline/vim-airline'
	use 'scrooloose/nerdtree'
	use 'jiangmiao/auto-pairs'
	use 'tpope/vim-fugitive'
    use 'tpope/vim-surround'
	use 'preservim/vim-pencil'

    -- Color schemes
	use 'morhetz/gruvbox'
	use 'KKPMW/distilled-vim'
	use 'preservim/vim-colors-pencil'
	use 'rainglow/vim'
    use 'arcticicestudio/nord-vim'
    use 'rafi/awesome-vim-colorschemes'

    -- Navigators
	use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
	use 'nvim-lua/plenary.nvim'
	use 'nvim-telescope/telescope.nvim'
	use 'BurntSushi/ripgrep'
	use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
	use 'nvim-treesitter/playground'
    use {'ggandor/leap.nvim'}

    -- LSP/completion
    use 'neovim/nvim-lspconfig'
    use 'williamboman/nvim-lsp-installer'
    use 'L3MON4D3/LuaSnip'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cpm-nvim-lsp-signature-help'
    use 'hrsh7th/cmp-nvim-lsp-document-symbol'

    -- Golang
    use 'fatih/vim-go'

    -- Rust
    use 'simrat39/rust-tools.nvim'
end)
