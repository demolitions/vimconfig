set nocompatible

call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
"Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Group dependencies, vim-snippets depends on ultisnips
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
"Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
"Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
"Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
" Plug '~/my-prototype-plugin'

Plug 'scrooloose/syntastic'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'majutsushi/tagbar'
"Plug 'ervandew/supertab'
Plug 'nathanaelkane/vim-indent-guides'

" version control
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'mhinz/vim-signify'
" PHP 
Plug 'stanangeloff/php.vim'
"Plug 'shawncplus/phpcomplete.vim'
" JS
Plug 'pangloss/vim-javascript'
"Plug 'jelera/vim-javascript-syntax'
Plug 'nono/jquery.vim'
Plug 'elzr/vim-json'
" CSS
Plug 'hail2u/vim-css3-syntax'
Plug 'ap/vim-css-color'
" HTML
Plug 'othree/html5.vim'
Plug 'gregsexton/matchtag'
" FTP Sync
Plug 'eshion/vim-sync'

" Add plugins to &runtimepath
call plug#end()

filetype on
filetype plugin on
filetype indent on
syntax on

" Syntastic config
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_lua_checkers = ["luac", "luacheck"]
let g:syntastic_lua_luacheck_args = "--no-unused-args" 
" airline config
set laststatus=2
let g:airline_powerline_fonts = 1

" signify config
let g:signify_vcs_list = [ 'svn' ]

" jquery config
au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery



let g:DirDiffExcludes = ".svn,*.zip,CVS,*.class,*.exe,.*.swp,.tags,tags"
let g:DirDiffIgnore = "Id:,Revision:,Date:"
let g:DirDiffWindowSize = 12

set tabstop=4

nnoremap <F10> :NERDTreeToggle<cr>
nnoremap <Up> :echomsg "use k"<cr>
nnoremap <Down> :echomsg "use j"<cr>
nnoremap <Left> :echomsg "use h"<cr>
nnoremap <Right> :echomsg "use l"<cr>
