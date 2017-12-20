""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle plugins
"
"
set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.dotfiles/vim/bundle/Vundle.vim
call vundle#begin('~/.dotfiles/vim/bundle')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" vim fuzzy finder
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'

" async lint engine
Plugin 'w0rp/ale'

" vim-fugitive
Plugin 'tpope/vim-fugitive'

" vim-commentary
Plugin 'tpope/vim-commentary'

" vim-sensible to get some sensible default settings
Plugin 'tpope/vim-sensible'

" vim-surround
Plugin 'tpope/vim-surround'

" vim-repeat
Plugin 'tpope/vim-repeat'

" Multiple cursors
Plugin 'terryma/vim-multiple-cursors'

" vim-airline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" mustache/handlebars
Plugin 'mustache/vim-mustache-handlebars'

" editorconfig
Plugin 'editorconfig/editorconfig-vim'

" Color schemes!
Plugin 'flazz/vim-colorschemes'

" delimitMate for auto closing of parens, brackets, etc
Plugin 'Raimondi/delimitMate'

" Tern-based JavaScript intelligent editing support
" Be sure to run `npm install` in the `bundle/tern_for_vim` folder
Plugin 'ternjs/tern_for_vim'

" Emmet-vim for super fast HTML editing
Plugin 'mattn/emmet-vim'

" Supertab to get Ultisnips and YCM to play nice
Plugin 'ervandew/supertab'

" Ultisnips snippet engine
Plugin 'SirVer/ultisnips'

" Lots of snippets for lots of languages
Plugin 'honza/vim-snippets'

" Add git gutter to note diffs inline
Plugin 'airblade/vim-gitgutter'

" Add NerdTree to visualize directories
Plugin 'scrooloose/nerdtree'

" Add git flags support to NerdTree
Plugin 'Xuyuanp/nerdtree-git-plugin'

" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General
"
" Sets how many lines of history VIM has to remember
set history=700

set backspace=indent,eol,start

" With a map leader it's possible to do extra key combinations
let mapleader = ","
let g:mapleader = ","

" Quickly source this file
nnoremap <leader>sv :source ~/.vimrc<return>

" Set to auto read when a file is changed from the outside
set autoread

" Fast saving
nmap <leader>w :w!<cr>

" :W sudo saves the file
" (useful for handling the permission-denied error)
command! W w !sudo tee % > /dev/null

" Toggle paste mode
set pastetoggle=<F5>

" Tab settings
filetype plugin indent on
set tabstop=2
set shiftwidth=2
set expandtab

" Turn on line numbers and relative line numbers
set nu
set rnu

" Always show some lines after the cursor
set scrolloff=8

" Wrap lines, but only insert newlines when enter is pressed
set wrap " Wrap words visually
set linebreak " wrap only at the 'breakat' option
set nolist " list disables linebreak
" Prevent Vim from automatically inserting line
"   breaks in newly entered text
set textwidth=0
set wrapmargin=0

" Spell check commit messages, text, and markdown files
autocmd BufNewFile,BufRead *.md setlocal spell
autocmd BufNewFile,BufRead *.txt setlocal spell
autocmd BufNewFile,BufRead COMMIT_EDITMSG setlocal spell

" Open split windows below / to the right
set splitbelow
set splitright

" clean trailing white space and carraige returns
autocmd BufWritePre * :%s/\s\+$//e | %s/\r$//e


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Moving around
"
" Faster window switching
nmap <c-j> <c-w>j
nmap <c-k> <c-w>k
nmap <c-l> <c-w>l
nmap <c-h> <c-w>h

" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Search Options
"
" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Highlights all search hits
set hlsearch

" Toggle search highlighting
nnoremap <F3> :set hlsearch!<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" User Interface
"
" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

" Enable 256 colors
set t_Co=256

" Syntax highlighting
syntax enable

" Set the color scheme
set background=dark
let g:solarized_termcolors=256
colorscheme lucius

" Use the vim wildmenu for command completion
set wildmenu
set wildmode=longest:full,full

" Ignore files in the wildmenu
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,.meteor/*,target/*


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Filetypes
"
" Force *.md files to be recognized as markdown
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Plugin Configuration
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" fzf config
"
nnoremap <C-f> :Files<return>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Editorconfig
"
let g:EditorConfig_exclude_patterns = ['fugitive://.*']

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Delimitmate
"
let g:delimitMate_expand_space = 1
let g:delimitMate_expand_cr = 1


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree configuration
"
" Toggle NERDTree shortcut
map <leader>nt :NERDTreeToggle<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Airline Configuration
"
" Always display status line
set laststatus=2

" Auto populate the g:airline_symbols dictionary
let g:airline_powerline_fonts = 1

" Set mixed indent algorithm
let g:airline#extensions#whitespace#mixed_indent_algo = 1



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-fugitive git shortcuts
"
nnoremap <leader>gs :Gstatus<return>
nnoremap <leader>gd :Gdiff<return>
nnoremap <leader>gb :Gblame<return>
nnoremap <leader>gr :Gread<return>
nnoremap <leader>gc :Gcommit<return>
nnoremap <leader>gw :Gwrite<return>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-unimpaired extensions
"
nmap [g :tabprev<return>
nmap ]g :tabnext<return>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ale
"
let g:ale_linters = {
\   'javascript': ['eslint'],
\}


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ultisnips configuration
"
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>""
let g:UltiSnipsEditSplit="vertical"


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Multiple Cursor Configurationp>'
"
" Change the default mapping
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key='<C-m>'
