set nocompatible
filetype off

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim


" Download plug-ins to the ~/.vim/plugged/ directory
call vundle#begin('~/.vim/plugged')

" Plugins
Plugin 'VundleVim/Vundle.vim'
Plugin 'cocopon/iceberg.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'preservim/nerdtree'
Plugin 'preservim/tagbar'
Plugin 'dyng/ctrlsf.vim'
Plugin 'derekwyatt/vim-fswitch'
Plugin 'derekwyatt/vim-protodef'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'ryanoasis/vim-devicons'
Plugin 'ap/vim-css-color'

call vundle#end()
filetype plugin indent on

set nu     " Enable line numbers
syntax on  " Enable syntax highlighting

" How many columns of whitespace a \t is worth
set tabstop=4 

" How many columns of whitespace a "level of indentation" is worth
set shiftwidth=4 

" Use spaces when tabbing
set expandtab

set incsearch  " Enable incremental search
set hlsearch   " Enable highlight search

set termwinsize=12x0   " Set terminal size
set splitbelow         " Always split below
set mouse=a            " Enable mouse drag on window splits
set background=dark
colorscheme iceberg
hi Normal guibg=NONE ctermbg=NONE 
highlight clear LineNr

let g:AutoPairsShortcutToggle = '<C-P>'

let NERDTreeShowBookmarks = 0   " Show the bookmarks table
let NERDTreeShowHidden = 0      " Show hidden files
let NERDTreeShowLineNumbers = 0 " Hide line numbers
let NERDTreeMinimalMenu = 1     " Use the minimal menu (m)
let NERDTreeWinSize = 31        " Set panel width to 31 columns

nmap <F2> :NERDTreeToggle<CR>


" Focus the panel when opening it
let g:tagbar_autofocus = 1

" Highlight the active tag
let g:tagbar_autoshowtag = 1

" Make panel vertical and place on the right
let g:tagbar_position = 'botright vertical'

" Mapping to open and close the panel
nmap <F8> :TagbarToggle<CR>

" Use the ack tool as the backend
let g:ctrlsf_backend = 'ack'
"
"Auto close the results panel when opening a file
let g:ctrlsf_auto_close = { "normal":0, "compact":0  }

" Immediately switch focus to the search window
let g:ctrlsf_auto_focus = { "at":"start"  }

" Don't open the preview window automatically
let g:ctrlsf_auto_preview = 1

" Use the smart case sensitivity search scheme
let g:ctrlsf_case_sensitive = 'smart'

" Normal mode, not compact mode
let g:ctrlsf_default_view = 'normal'

" Use absoulte search by default
let g:ctrlsf_regex_pattern = 0

" Position of the search window
let g:ctrlsf_position = 'right'

" Width or height of search window
let g:ctrlsf_winsize = '46'

" Search from the current working directory
let g:ctrlsf_default_root = 'cwd'

" (Ctrl+F) Open search prompt (Normal Mode)
nmap <C-s>f <Plug>CtrlSFPrompt 

" (Ctrl-F + f) Open search prompt with selection (Visual Mode)
xmap <C-s>f <Plug>CtrlSFVwordPath

" (Ctrl-F + F) Perform search with selection (Visual Mode)
xmap <C-s>F <Plug>CtrlSFVwordExec

" (Ctrl-F + n) Open search prompt with current word (Normal Mode)
nmap <C-s>n <Plug>CtrlSFCwordPath

" (Ctrl-F + o )Open CtrlSF window (NormalMode)
nnoremap <C-s>o :CtrlSFOpen<CR>

" (Ctrl-F + t) Toggle CtrlSF window (Normal Mode)
nnoremap <C-s>t :CtrlSFToggle<CR>

" (Ctrl-F + t) Toggle CtrlSF window (Insert Mode)
inoremap <C-s>t <Esc>:CtrlSFToggle<CR>

au! BufEnter *.cpp let b:fswitchdst = 'hpp,h'
au! BufEnter *.h let b:fswitchdst = 'cpp,c'

nmap <C-Z> :vsplit <bar> :wincmd l <bar> :FSRight<CR>

"Pull in prototypes
nmap <buffer> <silent> <leader> ,PP
" Pull in prototypes without namespace definition
nmap <buffer> <silent> <leader> ,PN 


let g:airline_theme='deus'     
let g:airline_powerline_fonts = 2
let g:airline_statusline_ontop=0
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'


nnoremap <C-j>  :tabprevious<CR>
nnoremap <C-l> :tabnext<CR>
nnoremap <C-n> :tabnew<CR>

"devicon
set encoding=UTF-8
