"
" My .vimrc !
"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sets how many lines of history VIM has to remenber
set history=500

" Show line numbers
"set number

" Highlight search results
set hlsearch

" Already jump to the first hit during a search process
set incsearch

" make the window appear below the current window
set splitbelow " :new

" make the window appear on the right
set splitright " :vnew

" Highlight current line
"set cursorline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Disable arrow keys in Normal mode
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

"Disable arrow keys in Insert mode
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax enable 

" Enable 256 colors palette for all terminals 
" (which ones don't have at least 256 colors those days ?)
set t_Co=256

set background=dark
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 2 spaces
set shiftwidth=2
set tabstop=2

" Linebreak on 500 characters
"set linebreak
"set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git etc. anyway...
set nobackup
set nowritebackup
set noswapfile
set noundofile
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vundle for managing plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" rm -rf ~/.vim
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

filetype off " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin() " required, all plugins must appear after this line.

Plugin 'VundleVim/Vundle.vim'                        " Vundle

Plugin 'vim-airline/vim-airline'                     " Airline
Plugin 'vim-airline/vim-airline-themes'              " Airline Themes

Plugin 'scrooloose/nerdtree'                         " Nerdtree

Plugin 'sickill/vim-monokai'                         " Monokai

" All of your Plugins must be added before the following line
call vundle#end()            " required

" Automatically load plugins based on file extension
filetype plugin on

" Automatically indent based on file extension
filetype indent on
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Airline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline_powerline_fonts = 1
let g:airline_theme = 'murmur'
"let g:airline_theme = 'simple'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => NERDTree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Uncomment to autostart the NERDTree
"autocmd vimenter * NERDTree

" map 
map <F7> :NERDTreeToggle<CR>
"map <C-n> :NERDTreeToggle<CR>

" visual indention
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" show hidden files
let NERDTreeShowHidden=1

" Start NERDTree in minimal UI mode (No help lines)
let NERDTreeMinimalUI=1

" Hide .pyc files in NERDTree
let NERDTreeIgnore = ['\.pyc$']

" Close NERDtree when files was opened
let NERDTreeQuitOnOpen=1

" enable line numbers
"let NERDTreeShowLineNumbers=1

" make sure relative line numbers are used
"autocmd FileType nerdtree setlocal relativenumber
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Monokai
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
try
  colorscheme monokai
catch
endtry

