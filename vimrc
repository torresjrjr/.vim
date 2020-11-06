" vimrc
" =====
" Author:  Byron Torres (@torresjrjr) <b@torresjrjr.com>
" License: GPLv3 <https://www.gnu.org/licenses/gpl>
" ----------------------------------------------------------------------

set nocompatible
syntax on
filetype plugin indent on
set laststatus=2 showcmd
set number       scrolloff=5
set path+=**     wildmenu      wildignorecase
set hlsearch     incsearch     ignorecase
set splitbelow   splitright
set tabstop=4    softtabstop=0 shiftwidth=0
set nowrap       textwidth=72  colorcolumn=73,81 linebreak showbreak=`
set mouse+=a     guioptions+=d
set backspace=indent,eol,start
set list listchars=tab:\ \ \:,trail:#,extends:>,precedes:<,nbsp:%
set viminfofile=$XDG_CACHE_HOME/vim/viminfo

colorscheme elflord
hi NonText      ctermfg=DarkBlue
hi SpecialKey   ctermfg=DarkBlue
hi LineNr       ctermfg=DarkMagenta
hi ColorColumn  ctermbg=Black

set statusline=\ %n:\ %f\ %y%m%r%w%<%=\ `%-8B\ %c%V,%l/%L\ 
hi StatusLine    ctermbg=Black ctermfg=White cterm=bold,underline
hi StatusLineNC  ctermbg=Gray  ctermfg=Black cterm=bold

let g:netrw_home="$XDG_CACHE_HOME/vim/"
let g:netrw_banner=0
let g:netrw_liststyle=3
let g:netrw_browse_split=3

command VV  <mods> new ~/.vim/vimrc
command VL  <mods> new ~/.vim/after/plugin/local.vim

noremap! kj  <ESC>
noremap <C-J>  :bnext<CR>
noremap <C-K>  :bprev<CR>
noremap <C-N>  :cnext<CR>
noremap <C-P>  :cprev<CR>
noremap <C-B>  :w<CR>:terminal<Space>./%<CR>
noremap <C-L>  :nohls<CR><C-L>

let mapleader = " "
noremap <leader>q  q:
noremap <leader>f  :Files<CR>
noremap <leader>b  :Buffers<CR>
" see `:help fzf-vim-commands`

" Plugin Manager: junegunn/vim-plug
call plug#begin('$HOME/.vim/plugged')
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
	Plug 'tpope/vim-surround'
call plug#end()
let g:plug_window='botright 10new'

" @torresjrjr
