" O.M.A.C        
call plug#begin('~/.nvim/plugged') " vim-plug

" colorscheme
Plug 'altercation/vim-colors-solarized' 

" Rails support (:A, :R, :Rmigration, :Rextract)
Plug 'tpope/vim-rails', { 'for': ['ruby', 'eruby', 'haml', 'slim'] } 

" Multi-language testing support (uses NeoTerm)
Plug 'janko-m/vim-test', { 'on': ['TestFile', 'TestLast', 'TestNearest', 'TestSuite', 'TestVisit'] }

" CSS color highlighter
Plug 'gorodinskiy/vim-coloresque', { 'for': ['css', 'sass', 'scss', 'less'] }

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' } 

" Git log viewer
Plug 'gregsexton/gitv', { 'on': 'Gitv' }

" Color picker
Plug 'KabbAmine/vCoolor.vim', { 'on': 'VCoolor' }

" Neovim terminal improving
Plug 'kassio/neoterm', { 'on': 'T' }

Plug 'godlygeek/tabular'       "alignment
Plug 'cakebaker/scss-syntax.vim' " SCSS syntax
Plug 'leafgarland/typescript-vim' " Typescript Syntax
Plug 'ryanoasis/vim-devicons' " Typescript Syntax
Plug 'tpope/vim-haml'          " Haml syntax
Plug 'joukevandermaas/vim-ember-hbs' " handlebars ember support
Plug 'tpope/vim-endwise'       " add 'end' to code blocks
Plug 'tpope/vim-fugitive'      " use 'git'
Plug 'vim-ruby/vim-ruby'       " vim ruby
Plug 'tpope/vim-repeat'        " allow plugins to repeat actions with '.'
Plug 'tpope/vim-rsi'           " make insert-mode more like readline
Plug 'tpope/vim-scriptease'    " useful plugin development tools
Plug 'tpope/vim-surround'      " support handling surrounding quotes/brackets/etc
Plug 'tpope/vim-vinegar'       " enhance the default file browser, add '-' to go up directories
Plug 'junegunn/vim-easy-align' "Easy-Align
Plug 'kchmck/vim-coffee-script'
Plug 'wavded/vim-stylus'
Plug 'leshill/vim-json'
Plug 'ervandew/supertab'       " tab completion
Plug 'godlygeek/tabular'       " aligning text
Plug 'kien/ctrlp.vim'          " fuzzy file finder
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist|tmp|bower_components)|(\.(swp|ico|git|svn))$'
Plug 'losingkeys/vim-stopsign' " expand 'dbg' to statements that stop your program
Plug 'rking/ag.vim'            " use the 'ag' search tool
Plug 'scrooloose/syntastic'    " syntax checking
Plug 'sickill/vim-pasta'       " enhances the default paste command ('p')
Plug 'itchyny/lightline.vim'   " Lightline (simple status line)
Plug 'tpope/vim-git'           " Git syntax
Plug 'airblade/vim-gitgutter' " Git changes showed on line numbers
Plug 'tpope/vim-fugitive'      " Fugitive
Plug 'tpope/vim-commentary'    " comment out code

" Add plugins to &runtimepath
call plug#end()

" Defaults
set nu                             " Line Numbers
let mapleader = "\<Space>"         " Set the leader to the biggest key
set shell=/bin/zsh                 " Setting shell to zsh

" Remove Backup
set nobackup
set nowb
set noswapfile

" Terminal Settings
let g:neoterm_size=13
let g:neoterm_position='horizontal'

" Tabs
set softtabstop=2
set shiftwidth=2
set tabstop=2
set expandtab

" More sane Vertical Split characters
set fillchars+=vert:│
hi VertSplit ctermbg=NONE guibg=NONE

" More Natural splits
set splitbelow
set splitright

" use leader-h to kill search hilighting
nnoremap <Leader>h :noh<CR>

" use ctrl-tab to cycle tabs
nnoremap <Leader><Tab> :tabn<CR>

" use leader-t to summon a terminal in a split buffer 
nnoremap <Leader>tt :14sp \| terminal<CR>

" use leader ee to escape terminal and switch buffer
tnoremap <Leader>ee <C-\><C-n>

" open init.vim in new tab
nnoremap <Leader>ev :tabe ~/.nvimrc<CR>

" source init.vim
nnoremap <Leader>sv :source ~/.nvimrc<CR>

" tabe shortcut
nnoremap <Leader>te :tabe<Space>

"" Plugin Settings

"Test Runner
let test#ruby#rspec#executable = 'bundle exec rspec'
let test#strategy = "neovim"

"NERDTree
map <C-n> :NERDTreeToggle<CR>

"vim-commentary
map <Leader>cc gcc

" solarized colorscheme (https://github.com/altercation/vim-colors-solarized)
set background=dark
colorscheme solarized

"Filetype Settings
" autocmd FileType ruby,coffee,sass,scss,haml,slim,vim setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=12
" autocmd FileType html,htmldjango,xhtml,css,javascript,javascript.jsx,snippets setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120

" Highlight term cursor differently
highlight TermCursor ctermfg=green guifg=green

highlight ws ctermbg=red guibg=red
match ws /\s\+$/
autocmd BufWinEnter * match ws / \+$/

