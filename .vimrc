let mapleader = ","

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

call plug#begin()

  Plug 'tpope/vim-sensible'
  Plug '~/solarized/vim-colors-solarized'
  Plug 'tpope/vim-fugitive'
  Plug 'scrooloose/syntastic'
  Plug 'kien/ctrlp.vim'
  Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
  Plug 'bling/vim-airline'
  Plug 'tomtom/tcomment_vim'

call plug#end()
"syntax enable filetype on
"filetype plugin on
"filetype indent on
set background=dark
colorscheme solarized
set hidden
nnoremap ` '
nnoremap ' `
"set wildmenu
"set wildmode=list:longest
set ignorecase
set smartcase
set scrolloff=8
set sidescrolloff=15
set sidescroll=1
set hlsearch
set incsearch
set number
set noswapfile
set nowb
set smartindent
set shiftwidth=3
set tabstop=3
set expandtab
"set list listchars=tab:\ \ ,trail:Â·

map <C-n> :NERDTreeToggle<CR>

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

