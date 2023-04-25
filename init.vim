set tabstop=4
set shiftwidth=4
set expandtab
set termguicolors
set mouse=a
set number relativenumber

set t_Co=256
set background=dark

let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"

source ~/.config/nvim/plugins.vim
source ~/.config/nvim/treesitter.vim
source ~/.config/nvim/coc.vim

source ~/.config/nvim/airline.vim
source ~/.config/nvim/nerdtree.vim
source ~/.config/nvim/nvim-dap.vim
source ~/.config/nvim/nvim-dap-ui.vim

let g:python3_host_prog = '/home/brad/.pyenv/shims/python3'
let g:neovide_transparency = 0.8
let g:gruvbox_transparent_bg = 1

filetype on
filetype plugin on
filetype indent on

syntax on
colorscheme gruvbox

highlight Normal ctermbg=none guibg=none
highlight NonText ctermbg=none guibg=none

nnoremap <leader>n :bn<cr>
nnoremap <leader>p :bp<cr>
nnoremap <leader>d :bd<cr>

