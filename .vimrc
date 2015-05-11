let mapleader = ","

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

call plug#begin()

  " Basics
  Plug 'tpope/vim-sensible'
  Plug 'tpope/vim-repeat'

  " Eye candy and window navigation
  Plug '~/solarized/vim-colors-solarized'
  Plug 'bling/vim-airline'
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'nathanaelkane/vim-indent-guides'
  Plug 'ntpeters/vim-better-whitespace'

  " Syntax checking
  Plug 'scrooloose/syntastic'

  " Git
  Plug 'tpope/vim-fugitive'
  Plug 'airblade/vim-gitgutter'

  " File management
  Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
  Plug 'kien/ctrlp.vim'

  " New editing keys
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-unimpaired'
  Plug 'tomtom/tcomment_vim'
  " Plug 'Lokaltog/vim-easymotion'
  Plug 'terryma/vim-multiple-cursors'
  " Plug 'godlygeek/tabular'
  Plug 'junegunn/vim-easy-align'

  " Auto-complete
  " Plug 'ervandew/supertab'
  " Plug 'Valloric/YouCompleteMe'
  Plug 'Shougo/neocomplete.vim'

  " Auto-insert
  " Plug 'Raimondi/delimitMate'
  " Plug 'SirVer/ultisnips'

  " VHDL
  Plug 'cognoscan/vim-vhdl'

call plug#end()

"syntax enable filetype on
"filetype plugin on
"filetype indent on
set background=dark
colorscheme solarized
set hidden
set virtualedit=all
nnoremap ` '
nnoremap ' `
nnoremap <CR> :nohlsearch<cr>
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

set pastetoggle=<Insert>

map <Leader>n :NERDTreeToggle<CR>

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:indent_guides_guide_size = 1
let g:indent_guides_start_level = 2

" Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
vmap <Enter> <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

