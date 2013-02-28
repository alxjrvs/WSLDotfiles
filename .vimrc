syn on
set t_Co=256
set nocompatible "don't need to keep compatibility with Vi
set ruler
set wrap
set hidden      "improve history and buffer
set history=1000
set number
set backspace=2
set softtabstop=2
set shiftwidth=2
set tabstop=2
set expandtab
set wrap
set lbr
set encoding=utf-8



map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
map ; :
noremap ;; ;
inoremap kj <esc>
imap <C-a> <esc>


let mapleader = " "

filetype off

"vundle
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

"Let Vundle manage Vundle
"required!

Bundle 'gmarik/vundle'


"Nerd{foo} Stuff
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
function OpenNERDTree()
  execute ":NERDTree"
endfunction
command -nargs=0 OpenNERDTree :call OpenNERDTree()

nmap <Leader>n :OpenNERDTree<CR>

"programming
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-rails'
Bundle 'Townk/vim-autoclose'

"commandT

Bundle 'wincent/Command-T'

"ctags
Bundle 'majutsushi/tagbar'
Bundle 'vim-scripts/AutoTag'
nnoremap <silent> <Leader>b :TagbarToggle<CR>
nmap tb :TagbarToggle<CR><C-w>l


"indent-guides
Bundle 'nathanaelkane/vim-indent-guides'
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_guide_size= 1
let g:indent_guides_guides_start_level=2
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=234
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=234

"Powerline
Bundle 'Lokaltog/vim-powerline'
set laststatus=2
let g:Powerline_symbols = 'fancy'

"Colorscheme
Bundle 'wgibbs/vim-irblack'
Bundle 'kml/vim-irblack-plus'
colorscheme ir_black+
set cursorline
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline

"vimux
Bundle 'benmills/vimux'

" Prompt for a command to run
map rp :PromptVimTmuxCommand

" Run last command executed by RunVimTmuxCommand
" k
map rl :RunLastVimTmuxCommand

" Inspect runner pane
map ri :InspectVimTmuxRunner

" Close all other tmux panes in current window
map rx :CloseVimTmuxPanes

" Interrupt any command running in the runner pane
map rs :InterruptVimTmuxRunnerk

"snippets
Bundle 'garbas/vim-snipmate'
Bundle 'tomtom/tlib_vim'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'honza/snipmate-snippets'
let g:snippets_dir = '~/.vim/bundle/vim-snipmate/syntax/'

"Syntastic
Bundle 'scrooloose/syntastic'
let g:syntastic_check_on_open=1

filetype plugin indent on

nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<cr>
" edit vimrc in a vertical split
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>
"" open new v split and switch to it
nnoremap <leader>w <C-w>v<C-w>l
"open new h split and switch to it
nnoremap <leader>s <C-w>s<C-w>l

