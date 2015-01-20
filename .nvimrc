"""""""""""""""""""""""""""""""""
""""  ALXJRVS Vim Profile    """"
""""      Version 2.0.1      """"
""""       "MotherBoxx"      """"
"""""""""""""""""""""""""""""""""

"""" CHANGELOG
  "" 4.20.2014 2.0.0 There Came a Time When The Old Gods Died.
  "" 1.19.2015 2.0.1  THEN—THERE WAS NEW LIGHT!
    " - vim -> neovim

"""" Contents """"
  "" .I. Setup
  "" .II. Generic Mappings
  "" .III. Vundle

"""" .I. Setup """"

filetype off
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
set linespace=0
set encoding=utf-8
set list
set listchars=tab:>-,trail:¬,extends:>,precedes:<
set complete=.,b,u,]

"" Ruby Setups
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1

"" Improve autocomplete menu color
highlight Pmenu ctermbg=238 gui=bold

"" Load local vimrcs
if filereadable(glob("~/.vimrc.local")) 
  source ~/.vimrc.local
endif

"""" .II. Generic Mappings """"

"" Disable Arrow Keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

"" Make Space bar leader, because I am a monster?
let mapleader = " "

"" Edit vimrc in a vertical split
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>

"" Open new v split and switch to it
nnoremap <leader>w <C-w>v<C-w>l

"" Open new h split and switch to it
nnoremap <leader>s <C-w>s<C-w>l

"" Shortcut to source vimrc
nnoremap <leader>sv :source $MYVIMRC<cr>

""Remove Whitespace

nnoremap <leader><leader> :%s/\s\+$//<cr>

""""" .III. Vundle """"

"" Let Vundle manage Vundle
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

"" Vundle
Bundle 'gmarik/vundle'

"" Nerdcommenter
Bundle 'scrooloose/nerdcommenter'

"" Handlebars
Bundle 'juvenn/mustache.vim'

"" Airline
Bundle 'bling/vim-airline'
let g:airline_powerline_fonts = 1
set laststatus=2
set fillchars=diff:·
let g:airline_left_sep = ''
let g:airline_left_alt_sep = '⮁'
let g:airline_right_sep = ''
let g:airline_right_alt_sep = '⮃'
let g:airline_fugitive_prefix = '⭠'
let g:airline_readonly_symbol = '⭤'
let g:airline_linecolumn_prefix = '⭡'

"" Dash
Bundle 'rizzatti/dash.vim'
nmap <silent> <leader>d <Plug>DashSearch

"" Programming
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-rails'
Bundle 'Townk/vim-autoclose'
Bundle 'vim-ruby/vim-ruby'
Bundle 'sunaku/vim-ruby-minitest'
Bundle "vim-scripts/HTML-AutoCloseTag"

"" CtrlP
Bundle "kien/ctrlp.vim"
let g:ctrlp_map = '<leader>t'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

"" Surround Vim
Bundle 'tpope/vim-surround.git'

" Colorscheme
Bundle 'altercation/vim-colors-solarized'
set background=dark
colorscheme solarized

"" Headlights
Bundle 'mbadran/headlights'

"" Vimux
Bundle 'benmills/vimux'
let g:VimuxOrientation = "h"
let g:VimuxHeight = "25"

"" Prompt for a command to run
map rp :VimuxPromptCommand<cr>
"" Run last command executed by RunVimTmuxCommand
map rl :VimuxRunLastCommand<cr>
"" Inspect runner pane
map ri :VimuxInspectRunner<cr>
"" Close all other tmux panes in current window
map rx :VimuxCloseRunner<cr>

"indent-guides
Bundle 'nathanaelkane/vim-indent-guides'
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_guide_size=1
let g:indent_guides_start_level=2
let g:indent_guides_auto_colors=0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=234
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=234

"" Turbux
Bundle 'jgdavey/vim-turbux'
let g:VimuxOrientation = "v"
let g:no_turbux_mappings = 1
let g:turbux_command_prefix = 'bundle exec'
map <leader>r <Plug>SendTestToTmux
map <leader>R <Plug>SendFocusedTestToTmux

"" CoffeeScript
Bundle 'kchmck/vim-coffee-script'

"" Tlib vim
Bundle 'tomtom/tlib_vim'

"" Vim Addon MW Utils
Bundle 'MarcWeber/vim-addon-mw-utils'

"" VimHaml
Bundle 'tpope/vim-haml'

"" Syntastic
Bundle 'scrooloose/syntastic'
let g:syntastic_check_on_open=1

"" Sensible Defaults
Bundle 'tpope/vim-sensible'

"" Supertab
Bundle 'ervandew/supertab'

"" Silver Searcher
Bundle 'rking/ag.vim'

"" Vim Unimpared
Bundle 'tpope/vim-unimpaired'

"" Go
Plugin 'fatih/vim-go'

"" Tmux Compelete
Bundle 'wellle/tmux-complete.vim'

"" Hacky End-Of-File stuff
syntax on
filetype off
filetype on
filetype plugin indent on
