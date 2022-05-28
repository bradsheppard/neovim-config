" == VIM PLUG ================================
call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'towolf/vim-helm'

Plug 'sakhnik/nvim-gdb', { 'do': ':!./install.sh' }

Plug 'hashivim/vim-terraform'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'gruvbox-community/gruvbox'

Plug 'nvim-treesitter/nvim-treesitter'

"------------------------ COC ------------------------
" coc for tslinting, auto complete and prettier
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}" coc extensions
let g:coc_global_extensions = ['coc-eslint', 'coc-pyright', 'coc-tsserver', 'coc-css', 'coc-html', 'coc-json', 'coc-yank', 'coc-prettier', 'coc-tailwindcss', 'coc-rust-analyzer', 'coc-pairs']

Plug 'dikiaap/minimalist'

Plug 'ryanoasis/vim-devicons'

call plug#end()
