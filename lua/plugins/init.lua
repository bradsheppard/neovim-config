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

    use 'vim-airline/vim-airline'
    use 'vim-airline/vim-airline-themes'

    use 'gruvbox-community/gruvbox'
    use({ 'rose-pine/neovim', as = 'rose-pine' })

    use 'nvim-treesitter/nvim-treesitter'

    use 'mfussenegger/nvim-dap'
    use 'rcarriga/nvim-dap-ui'
    use 'mfussenegger/nvim-dap-python'
    use {'neoclide/coc.nvim', branch = 'release'}

    use 'dikiaap/minimalist'

    use 'ryanoasis/vim-devicons'

end)
