set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" All of your Plugins must be added before the following line
filetype plugin indent on    " required
Plugin 'scrooloose/nerdtree'
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeWinSize = 30
Plugin 'scrooloose/syntastic'
filetype indent on     " required!

let g:syntastic_enable_signs=1
let g:syntastic_auto_jump=1
let g:syntastic_stl_format = '[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]'
let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_javascript_checkers = ['jsxhint']
let g:syntastic_javascript_jsxhint_exec = 'jsx-jshint-wrapper'

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
"let g:syntastic_javascript_checkers = ['jshint']

Plugin 'pangloss/vim-javascript'
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_flow = 1
set expandtab
set tabstop=2
Plugin 'mxw/vim-jsx'
Plugin 'leafgarland/typescript-vim'
Plugin 'quramy/tsuquyomi'


autocmd BufNewFile,BufRead *.ts set syntax=typescript
Plugin 'alvan/vim-closetag'
let g:closetag_filenames = "*.html,*.xhtml,*.phtml"
Plugin 'tpope/vim-fugitive'

call vundle#end()            " required
