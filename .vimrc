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
  Plug 'qpkorr/vim-bufkill'

  " Libraries (no end-user features)
  Plug 'Shougo/vimproc', { 'do': 'make' }

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
  Plug 'dhruvasagar/vim-vinegar'
  " Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', '<Plug>VinegarUp'] }
  Plug 'scrooloose/nerdtree'
  Plug 'kien/ctrlp.vim'
  Plug 'rking/ag.vim'

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
  Plug 'vim-scripts/VIP'

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
" set listchars=tab:▸·,trail:·,extends:>,precedes:<,nbsp:+
set listchars=tab:►·,trail:·,extends:>,precedes:<,nbsp:+
set list

set pastetoggle=<Insert>

map <Leader>n :NERDTreeToggle<CR>

let g:ctrlp_clear_cache_on_exit = 0
" let g:ctrlp_user_command = ['.git', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:ctrlp_user_command = ['.git', 'git --git-dir=%s/.git ls-files -c --exclude-standard']

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

nmap cog :IndentGuidesToggle<CR>

" Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
vmap <Enter> <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" Shortcut for Steve-style comment box fixup:
vnoremap <Leader>vc :EasyAlign -2/-/ig['!Comment']l0r0<Enter>

let g:BufKillOverrideCtrlCaret = 1

let g:multi_cursor_normal_maps = {'$':1, 'd':1, '0':1, 'f':1, 't':1, 'c':1}

""""""""""""""""""""""""""""""""""" NEOCOMPLETE """""""""""""""""""""""""""

" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
"let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" Define keyword.
" if !exists('g:neocomplete#keyword_patterns')
"     let g:neocomplete#keyword_patterns = {}
" endif
" let g:neocomplete#keyword_patterns['default'] = '\h\w*'
"
" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplete#close_popup() . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? neocomplete#close_popup() : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplete#close_popup()
inoremap <expr><C-e>  neocomplete#cancel_popup()
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? neocomplete#close_popup() : "\<Space>"

" For cursor moving in insert mode(Not recommended)
"inoremap <expr><Left>  neocomplete#close_popup() . "\<Left>"
"inoremap <expr><Right> neocomplete#close_popup() . "\<Right>"
"inoremap <expr><Up>    neocomplete#close_popup() . "\<Up>"
"inoremap <expr><Down>  neocomplete#close_popup() . "\<Down>"
" Or set this.
"let g:neocomplete#enable_cursor_hold_i = 1
" Or set this.
"let g:neocomplete#enable_insert_char_pre = 1

" AutoComplPop like behavior.
"let g:neocomplete#enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplete#enable_auto_select = 1
"let g:neocomplete#disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
" autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
" autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
" autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
" autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
" autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
" if !exists('g:neocomplete#sources#omni#input_patterns')
"   let g:neocomplete#sources#omni#input_patterns = {}
" endif
"let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
" let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'
