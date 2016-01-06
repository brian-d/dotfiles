" -------
" Plugins
" --------
call plug#begin('~/.config/nvim/plugged')
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'digitaltoad/vim-jade'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'fcevado/molokai_dark'
call plug#end()


" Configure ctrl-p to ignore git ignored files
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" Configure Ggrep to open in a quickfix window
autocmd QuickFixCmdPost *grep* cwindow

" -------
" Spacing
" -------
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent

" -------------
" Look and Feel
" -------------
colorscheme molokai_dark
