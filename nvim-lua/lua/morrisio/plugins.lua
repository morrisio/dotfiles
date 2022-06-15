return require('packer').startup(function()
	use 'wbthomason/packer.nvim'

    -- Basics
	use 'vim-airline/vim-airline'
	use 'scrooloose/nerdtree'
	use 'rstacruz/vim-closer'
	use 'tpope/vim-fugitive'

    -- Color schemes
	use 'morhetz/gruvbox'
	use 'KKPMW/distilled-vim'
	use 'reedes/vim-colors-pencil'

    -- Navigators
	use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
	use 'nvim-lua/plenary.nvim'
	use 'nvim-telescope/telescope.nvim'
	use 'BurntSushi/ripgrep'
	use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
	use 'nvim-treesitter/playground'

    -- LSP/completion
    use 'neovim/nvim-lspconfig'
    use 'L3MON4D3/LuaSnip'
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'

    -- Rust
    use 'simrat39/rust-tools.nvim'


end)
