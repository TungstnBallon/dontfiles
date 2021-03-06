" All system-wide defaults are set in $VIMRUNTIME/archlinux.vim (usually just
" /usr/share/vim/vimfiles/archlinux.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vimrc), since archlinux.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing archlinux.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages.
runtime! archlinux.vim

" If you prefer the old-style vim functionalty, add 'runtime! vimrc_example.vim'
" Or better yet, read /usr/share/vim/vim80/vimrc_example.vim or the vim manual
" and configure vim to your own liking!

" do not load defaults if ~/.vimrc is missing
"let skip_defaults_vim=1

" Syntaxhighlighting
syntax on

" Dark background
set background=dark

" Set line numbers by default
set number

" Set tab spacing
set tabstop=4
set softtabstop=4

" Set tabs to spaces
set expandtab

"search as chars entered and highlight
set incsearch
set hlsearch

set showmatch	" shows matching brackets
set smartcase	" Do smartcase matching
set mouse=a 	" allow mouse in all modes


set rtp+=/usr/lib/python3.9/site-packages/powerline/bindings/vim
" always show statusline
set laststatus=2
" use 256 colors
set  t_Co=256
