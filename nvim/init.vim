" -------
" Plugins
" --------
call plug#begin('~/.config/nvim/plugged')
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-fireplace'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'digitaltoad/vim-jade'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'fcevado/molokai_dark'
call plug#end()


" --------------
" Plugin Options
" --------------

let NERDTreeWinSize = 50

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

" -----------
" Key Mapping
" -----------

" For the terminal, map Alt+{h,j,k,l} to move around windows
:tnoremap <A-h> <C-\><C-n><C-w>h
:tnoremap <A-j> <C-\><C-n><C-w>j
:tnoremap <A-k> <C-\><C-n><C-w>k
:tnoremap <A-l> <C-\><C-n><C-w>l
:nnoremap <A-h> <C-w>h
:nnoremap <A-j> <C-w>j
:nnoremap <A-k> <C-w>k
:nnoremap <A-l> <C-w>l

:nnoremap <leader>n :NERDTreeToggle<cr>

" -------------
" Look and Feel
" -------------
colorscheme molokai_dark
