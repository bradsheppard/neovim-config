-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use 'preservim/nerdtree'
    use 'towolf/vim-helm'

    use 'hashivim/vim-terraform'

    use { 'junegunn/fzf', run = ":call fzf#install()" }
    use { 'junegunn/fzf.vim' }

    use { 'embark-theme/vim', as = 'embark' }

    use 'vim-airline/vim-airline'
    use 'vim-airline/vim-airline-themes'

    use 'gruvbox-community/gruvbox'
    use({ 'rose-pine/neovim', as = 'rose-pine' })

    use 'nvim-treesitter/nvim-treesitter'

    use 'mfussenegger/nvim-dap'
    use 'rcarriga/nvim-dap-ui'
    use 'mfussenegger/nvim-dap-python'
    use 'leoluz/nvim-dap-go'
    use {'neoclide/coc.nvim', branch = 'release'}

    use 'dikiaap/minimalist'

    use 'ryanoasis/vim-devicons'

    use 'tpope/vim-fugitive'

    use 'KabbAmine/vCoolor.vim'

    use 'ThePrimeagen/vim-be-good'

    --use 'simrat39/rust-tools.nvim'

    use 'nvim-lua/plenary.nvim'

    --use 'neovim/nvim-lspconfig' -- Collection of configurations for built-in LSP client
    --use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
    --use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
    --use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
    --use 'L3MON4D3/LuaSnip' -- Snippets plugin

    --use {
    --    "windwp/nvim-autopairs",
    --    config = function() require("nvim-autopairs").setup {} end
    --}
end)
