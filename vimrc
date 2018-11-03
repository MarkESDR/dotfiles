filetype plugin indent on




" Shows line numbers
set number
" Sets width of number sidebar
set numberwidth=4

" Turn off highlight results on search
set nohlsearch


colorscheme ron


" Tab handling
" show existing tab with 4 spaces width
set tabstop=2
" when indenting with '>', use 4 spaces width
set shiftwidth=2
" On pressing tab, insert 4 spaces
set expandtab

" Ignore paths
set wildignore+=.DS_Store
set wildignore+=*.jpg,*.jpeg,*.gif,*.png,*.gif,*.psd,*.o,*.obj,*.min.js
set wildignore+=*/bower_components/*,*/node_modules/*
set wildignore+=*/smarty/*,*/vendor/*,*/.git/*,*/.hg/*,*/.svn/*,*/.sass-cache/*,*/log/*,*/tmp/*,*/build/*,*/ckeditor/*,*/doc/*,*/source_maps/*,*/dist/*


" netrw config
let g:netrw_banner = 0 " Hide banner
let g:netrw_liststyle = 0 " One file per line
let g:netrw_list_hide = ',*\node_modules'




