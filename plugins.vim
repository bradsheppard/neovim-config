" == VIM PLUG ================================
call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'towolf/vim-helm'

Plug 'hashivim/vim-terraform'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'gruvbox-community/gruvbox'

Plug 'nvim-treesitter/nvim-treesitter'

Plug 'mfussenegger/nvim-dap'
Plug 'rcarriga/nvim-dap-ui'
Plug 'mfussenegger/nvim-dap-python'

"------------------------ COC ------------------------
" coc for tslinting, auto complete and prettier
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}" coc extensions

Plug 'dikiaap/minimalist'

Plug 'ryanoasis/vim-devicons'

call plug#end()
