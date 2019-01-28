source ~/.vimrc

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
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

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

" Better surround handling
Plug 'tpope/vim-surround'

" Better repeat
Plug 'tpope/vim-repeat'

" Seamless tmux+vim splits
Plug 'christoomey/vim-tmux-navigator'

" Colorschemes
Plug 'altercation/vim-colors-solarized'
Plug 'morhetz/gruvbox'

" ------------------------------------------------------------
call plug#end()
" ------------------------------------------------------------


" colorscheme
colorscheme gruvbox
set background=dark


" Use tabs to navigate deoplete
let g:deoplete#enable_at_startup = 1
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"


" Ctrl+P config
set runtimepath^=~/.vim/bundle/ctrlp.vim


" ctrlp config: ignore .gitignore
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']


" vim-mix-format config
let g:mix_format_on_save = 1


" Delete all buffers except for current
command Bda execute "%bd|e#"

