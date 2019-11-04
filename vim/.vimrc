" ===== BEGIN VUNDLE CONFIGURATION =====
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'Valloric/YouCompleteMe'
Plugin 'itchyny/lightline.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'scrooloose/nerdtree'
Plugin 'dracula/vim', { 'name': 'dracula' }

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" ===== END VUNDLE CONFIGURATION =====

"Line numbers, syntax highlighting, undo history, search highlighting
set number
syntax on
set history=1000
set hlsearch

"Default copy/pasting using the system clipboard
set clipboard=unnamed

"Switching between tabs using Ctrl + h/l
nnoremap <C-h> :tabprevious<CR>
nnoremap <C-l> :tabnext<CR>

"Highlights trailing whitespace with ·
set list listchars=trail:·

" 4 spaces when hitting tab
set tabstop=4       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.
set shiftwidth=4    " Indents will have a width of 4
set softtabstop=4   " Sets the number of columns for a TAB
set expandtab       " Expand TABs to spaces

" For lightline plugin
set laststatus=2
if !has('gui_running')
    set noshowmode
endif

" Toggle NERDTree
map <C-o> :NERDTreeToggle<CR>

" Vim C completion for clang_complete
let g:clang_library_path='/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/libclang.dylib'

" YCM
map <F9> :YcmCompleter FixIt<CR>

" colorscheme valloric
colorscheme dracula
set termguicolors
