source ~/.vimrc

" ------------------------------------------------------------
" vim-plug setup
call plug#begin()
" ------------------------------------------------------------

" Ctrl+P Fuzzy File Finder
Plug 'ctrlpvim/ctrlp.vim'

" Syntax for every language under the sun
Plug 'sheerun/vim-polyglot'

Plug 'vim-scripts/django.vim' " Django Templates

" IDE language support
Plug 'ternjs/tern_for_vim', { 'do': 'npm install' } " JS
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' } " JS
Plug 'slashmili/alchemist.vim' " Elixir
Plug 'zchee/deoplete-jedi' " Python
Plug 'Shougo/deoplete-clangx'
Plug 'copy/deoplete-ocaml'
Plug 'artur-shaik/vim-javacomplete2'

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

Plug 'mileszs/ack.vim'

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
let g:mix_format_on_save = 0
let g:mix_format_silent_errors = 1

" autoformat on save
autocmd BufWritePost *.exs,*.ex silent :!mix format %


" Delete all buffers except for current
command Bda execute "%bd|e#"

" ## added by OPAM user-setup for vim / base ## 93ee63e278bdfc07d1139a748ed3fff2 ## you can edit, but keep this line
let s:opam_share_dir = system("opam config var share")
let s:opam_share_dir = substitute(s:opam_share_dir, '[\r\n]*$', '', '')

let s:opam_configuration = {}

function! OpamConfOcpIndent()
  execute "set rtp^=" . s:opam_share_dir . "/ocp-indent/vim"
endfunction
let s:opam_configuration['ocp-indent'] = function('OpamConfOcpIndent')

function! OpamConfOcpIndex()
  execute "set rtp+=" . s:opam_share_dir . "/ocp-index/vim"
endfunction
let s:opam_configuration['ocp-index'] = function('OpamConfOcpIndex')

function! OpamConfMerlin()
  let l:dir = s:opam_share_dir . "/merlin/vim"
  execute "set rtp+=" . l:dir
endfunction
let s:opam_configuration['merlin'] = function('OpamConfMerlin')

let s:opam_packages = ["ocp-indent", "ocp-index", "merlin"]
let s:opam_check_cmdline = ["opam list --installed --short --safe --color=never"] + s:opam_packages
let s:opam_available_tools = split(system(join(s:opam_check_cmdline)))
for tool in s:opam_packages
  " Respect package order (merlin should be after ocp-index)
  if count(s:opam_available_tools, tool) > 0
    call s:opam_configuration[tool]()
  endif
endfor
" ## end of OPAM user-setup addition for vim / base ## keep this line
