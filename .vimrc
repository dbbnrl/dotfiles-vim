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
  Plug 'kana/vim-textobj-user'

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

  " Haskell
  Plug 'nbouscal/vim-stylish-haskell'
  Plug 'eagletmt/ghcmod-vim'
  " Plug 'bitc/vim-hdevtools'
  Plug 'gilligan/vim-textobj-haskell'
  Plug 'chrisdone/hindent'
  Plug 'eagletmt/neco-ghc'
  Plug 'raichoo/haskell-vim'
  Plug 'enomsg/vim-haskellConcealPlus'
  Plug 'Twinside/vim-hoogle'

call plug#end()


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""" Settings split into separate files:  """""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" Overall settings (not plugin-specific):
source ~/.vim/settings.vim

" Plugin-specific settings (may include language-specific settings):
source ~/.vim/airline.vim
source ~/.vim/syntastic.vim
source ~/.vim/easyalign.vim
source ~/.vim/neocomplete.vim

" Language-specific settings (may include plugin config):
source ~/.vim/haskell.vim


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""" Too small to deserve their own files: """"""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""" NERDTree """"""""""""""""""""""
map <Leader>n :NERDTreeToggle<CR>

""""""""""""""""""""" CtrlP """"""""""""""""""""""
let g:ctrlp_clear_cache_on_exit = 0
" let g:ctrlp_user_command = ['.git', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:ctrlp_user_command = ['.git', 'git --git-dir=%s/.git ls-files -c --exclude-standard']

""""""""""""""""""""" BufKill """"""""""""""""""""""
let g:BufKillOverrideCtrlCaret = 1

""""""""""""""""""""" Multiple-Cursors """"""""""""""""""""""
let g:multi_cursor_normal_maps = {'$':1, 'd':1, '0':1, 'f':1, 't':1, 'c':1}

""""""""""""""""""""" Indent-Guides """"""""""""""""""""""
let g:indent_guides_guide_size = 1
let g:indent_guides_start_level = 2
nmap cog :IndentGuidesToggle<CR>
