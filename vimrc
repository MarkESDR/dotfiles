filetype plugin indent on
"
" ------------------------------------------------------------
" vim-plug setup
call plug#begin()
" ------------------------------------------------------------

" Ctrl+P Fuzzy File Finder
Plug 'ctrlpvim/ctrlp.vim'

" Syntax for every language under the sun
Plug 'sheerun/vim-polyglot'

" IDE language support
Plug 'ternjs/tern_for_vim', { 'do': 'npm install' } " JS
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' } " JS
Plug 'slashmili/alchemist.vim' " Elixir

" deoplete
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

" Adds :MixFormat for elixir files
Plug 'mhinz/vim-mix-format'

" Adds emmet support for html (<C-y>,)
Plug 'mattn/emmet-vim'

" Shows current diff changes in sidebar
Plug 'airblade/vim-gitgutter'

" Status bar
Plug 'vim-airline/vim-airline'

" Better netrw
Plug 'tpope/vim-vinegar'

" Autocomplete on braces
Plug 'Raimondi/delimitMate'

" Colorschemes
Plug 'altercation/vim-colors-solarized'
Plug 'morhetz/gruvbox'

" ------------------------------------------------------------
call plug#end()
" ------------------------------------------------------------



" Use tabs to navigate deoplete
let g:deoplete#enable_at_startup = 1
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"



" Shows line numbers
set number
" Sets width of number sidebar
set numberwidth=4

" Turn off highlight results on search
set nohlsearch

" colorscheme
colorscheme gruvbox
set background=dark



" Tab handling
" show existing tab with 4 spaces width
set tabstop=2
" when indenting with '>', use 4 spaces width
set shiftwidth=2
" On pressing tab, insert 4 spaces
set expandtab



" Ctrl+P config
set runtimepath^=~/.vim/bundle/ctrlp.vim

" ctrlp config: ignore .gitignore
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

" Ignore paths
set wildignore+=.DS_Store
set wildignore+=*.jpg,*.jpeg,*.gif,*.png,*.gif,*.psd,*.o,*.obj,*.min.js
set wildignore+=*/bower_components/*,*/node_modules/*
set wildignore+=*/smarty/*,*/vendor/*,*/.git/*,*/.hg/*,*/.svn/*,*/.sass-cache/*,*/log/*,*/tmp/*,*/build/*,*/ckeditor/*,*/doc/*,*/source_maps/*,*/dist/*


" netrw config
let g:netrw_banner = 0 " Hide banner
let g:netrw_liststyle = 0 " One file per line
let g:netrw_list_hide = ',*\node_modules'


" vim-mix-format config
let g:mix_format_on_save = 1

