set nocompatible

call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Group dependencies, vim-snippets depends on ultisnips
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
" Plug '~/my-prototype-plugin'

Plug 'tpope/vim-fugitive'
Plug 'scrooloose/syntastic'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'majutsushi/tagbar'
Plug 'airblade/vim-gitgutter'
Plug 'ervandew/supertab'
Plug 'nathanaelkane/vim-indent-guides'

Plug 'stanangeloff/php.vim'

Plug 'pangloss/vim-javascript'
"Plug 'jelera/vim-javascript-syntax'
Plug 'nono/jquery.vim'

Plug 'elzr/vim-json'
Plug 'hail2u/vim-css3-syntax'
Plug 'ap/vim-css-color'

Plug 'othree/html5.vim'
Plug 'gregsexton/matchtag'


" Add plugins to &runtimepath
call plug#end()

filetype on
filetype plugin on
filetype indent on
syntax on

let g:DirDiffExcludes = ".svn,*.zip,CVS,*.class,*.exe,.*.swp,.tags,tags"
let g:DirDiffIgnore = "Id:,Revision:,Date:"
let g:DirDiffWindowSize = 12

" Syntastic config
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" airline config
set laststatus=2
let g:airline_powerline_fonts = 1
