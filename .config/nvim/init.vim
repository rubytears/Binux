nnoremap <SPACE> <Nop>
let mapleader = " "
syntax enable
set hidden
set wrap
set encoding=utf-8
set pumheight=10
set fileencoding=utf-8
set cmdheight=2
set mouse=a
set splitbelow
set splitright
set conceallevel=0
set tabstop=2
set shiftwidth=2
set smarttab
set autoindent
set laststatus=0
set number
set relativenumber
set cursorline
set showtabline=2
set nobackup
set nowritebackup
set updatetime=300
set formatoptions-=cro
set clipboard=unnamedplus
set ignorecase
set incsearch
set smartcase

" Plugins
call plug#begin()

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'
Plug 'pangloss/vim-javascript'
Plug 'itchyny/vim-gitbranch'
Plug 'szw/vim-maximizer'
Plug 'kassio/neoterm'
Plug 'tpope/vim-commentary'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'preservim/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'bagrat/vim-buffet'

call plug#end()

colorscheme gruvbox

" Airline
let g:airline#extensions#tabline#enabled = 1


" << KeyMapping >>
" VimConfig
nnoremap <leader>v :e $MYVIMRC<CR>
nnoremap <leader>` :so %<CR>

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Easy CAPS
inoremap <c-p> <ESC>viwUi
nnoremap <c-p> viwU<ESC>
inoremap <c-o> <ESC>viwui
nnoremap <c-o> viwu<ESC>

" BufferNavigation
nnoremap <TAB> :bnext<CR>
nnoremap <S-TAB> :bprevious<CR>

" Use alt + hjkl to resize windows
nnoremap <M-j> :resize -2<CR>
nnoremap <M-k> :resize +2<CR>
nnoremap <M-h> :vertical resize -2<CR>
nnoremap <M-l> :vertical resize +2<CR>

" vim-maximizer
nnoremap <leader>m :MaximizerToggle!<CR>

" Neoterm
let g:neoterm_default_mod = 'vertical'
let g:neoterm_size = 60
let g:neoterm_autoinsert = 1
nnoremap <c-q> :Ttoggle<CR>
inoremap <c-q> <Esc>:Ttoggle<CR>
tnoremap <c-q> <c-\><c-n>:Ttoggle<CR>

" Quick Save
nnoremap <c-s> :w<CR>
inoremap <c-s> <Esc>:w<CR>i

" Compile & Run
nnoremap <leader>p :!python3 %<CR>

" Buffet Mapping
nmap <leader>1 <Plug>BuffetSwitch(1)
nmap <leader>2 <Plug>BuffetSwitch(2)
nmap <leader>3 <Plug>BuffetSwitch(3)
nmap <leader>4 <Plug>BuffetSwitch(4)
nmap <leader>5 <Plug>BuffetSwitch(5)
nmap <leader>6 <Plug>BuffetSwitch(6)
nmap <leader>7 <Plug>BuffetSwitch(7)
nmap <leader>8 <Plug>BuffetSwitch(8)
nmap <leader>9 <Plug>BuffetSwitch(9)
nmap <leader>0 <Plug>BuffetSwitch(10)
noremap <c-w> :bd<CR>

" Prevent COC warning
let g:coc_disable_startup_warning = 1
