set nocompatible "don't need to keep compatibility with Vi
syn on
set t_Co=256
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
set listchars=tab:>-,trail:¬,extends:>,precedes:<
set list
set complete=.,b,u,]

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

"programming
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-rails'
Bundle 'Townk/vim-autoclose'
Bundle 'vim-ruby/vim-ruby'
Bundle 'sunaku/vim-ruby-minitest'

"SuperTab
Bundle 'ervandew/supertab'

"CtrlP
Bundle "kien/ctrlp.vim"
let g:ctrlp_map = '<leader>t'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

"ctags
Bundle 'majutsushi/tagbar'
Bundle 'vim-scripts/AutoTag'
nnoremap <silent> <Leader>b :TagbarToggle<CR><C-w>l
nnoremap <silent> tb :TagbarToggle<CR><C-w>l


"indent-guides
Bundle 'nathanaelkane/vim-indent-guides'
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_guide_size=1
let g:indent_guides_start_level=2
let g:indent_guides_auto_colors=0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=234
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=234

"Surround Vim
Bundle 'tpope/vim-surround.git'

"Powerline
Bundle 'Lokaltog/vim-powerline'
set laststatus=2
let g:Powerline_symbols = 'fancy'

"Colorscheme
Bundle 'Lokaltog/vim-distinguished'
Bundle 'altercation/vim-colors-solarized'
syntax enable
set background=dark
colorscheme solarized
set cursorline
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline

"Holy Light - MAC ONLY
Bundle 'Dinduks/vim-holylight'

"vimux
Bundle 'benmills/vimux'
"Vimux Commands
" Prompt for a command to run
map rp :PromptVimTmuxCommand<cr>
" Run last command executed by RunVimTmuxCommand
map rl :RunLastVimTmuxCommand<cr>
" Inspect runner pane
map ri :InspectVimTmuxRunner<cr>
" Close all other tmux panes in current window
map rx :CloseVimTmuxPanes<cr>
" Interrupt any command running in the runner pane
map rs :InterruptVimTmuxRunner<cr>

"vroom
Bundle 'skalnik/vim-vroom'
let g:vroom_use_vimux=1
let g:vroom_use_bundle_exec=1

"snippets
Bundle 'garbas/vim-snipmate'
Bundle 'tomtom/tlib_vim'
Bundle 'honza/vim-snippets'
Bundle 'MarcWeber/vim-addon-mw-utils'
let g:snippets_dir = '~/.vim/bundle/vim-snipmate/syntax/'

"GitGutter
Bundle 'airblade/vim-gitgutter'

"Syntastic
Bundle 'scrooloose/syntastic'
let g:syntastic_check_on_open=1

" Coffee Script stuff
Bundle 'kchmck/vim-coffee-script'

"Supertab
Bundle 'ervandew/supertab'

"ruby
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
"
"improve autocomplete menu color
highlight Pmenu ctermbg=238 gui=bold

filetype plugin indent on

nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<cr>
" edit vimrc in a vertical split
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>
"" open new v split and switch to it
nnoremap <leader>w <C-w>v<C-w>l
"open new h split and switch to it
nnoremap <leader>s <C-w>s<C-w>l
" shortcut to source vimrc
nnoremap <leader>sv :source $MYVIMRC<cr>
