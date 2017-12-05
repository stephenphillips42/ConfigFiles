set backup
set undodir=~/.vim/.undo//
set backupdir=~/.vim/.backup//
set directory=~/.vim/.swp//

" Spacing options
set expandtab
set tabstop=2
set shiftwidth=2
set autoindent

" Search options
noremap <F4> :set hlsearch! hlsearch?<CR>
vnoremap // y/<C-R>"<CR>"
set pastetoggle=<F12>

" ==================  VUNDLE ====================
" We use https://github.com/VundleVim/Vundle.vim to manage plugins
set nocompatible              " be iMproved, required

let has_vundle=1
if !filereadable($HOME."/.vim/bundle/Vundle.vim/README.md")
  echo "Installing Vundle..."
  echo ""
  silent !mkdir -p $HOME/.vim/bundle
  silent !git clone https://github.com/VundleVim/Vundle.vim $HOME/.vim/bundle/Vundle.vim
  let has_vundle=0
endif

" set the runtime path to include Vundle and initialize
"filetype off
set rtp+=$HOME/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'somini/vim-autoclose'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-surround'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'

" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/stephen/.vim/plugins/vim-fugitive'

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.

" All of your Plugins must be added before the following line
call vundle#end()            " required
if has_vundle == 0
  :silent! PluginInstall
  :qa
endif
"filetype plugin indent on
"syntax on

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line



