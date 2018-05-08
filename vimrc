execute pathogen#infect()

filetype on
syntax on

syntax enable
set background=dark
colorscheme solarized


let g:solarized_termcolors=256

set guifont=Menlo\ Regular:h18
set number

set hidden
set history=100

filetype indent on
set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent

set hlsearch

" Enable filetype plugins 
filetype plugin on

"""""""""""""""""""""""""""""
"Plugins
"""""""""""""""""""""""""""""
let mapleader=" "

nnoremap <silent> <leader>o :Files<CR>
nnoremap <silent> <leader>t :NERDTreeToggle<CR>
nnoremap <silent> <leader>? :History<CR>
nnoremap <silent> <leader>/ :execute 'Ag ' . input('Ag/')<CR>

nnoremap <silent> <leader>c :GoCoverage<CR>
nnoremap <silent> <leader>b :GoBuild<CR>
nnoremap <silent> <leader>. :GoDef<CR>
nnoremap <silent> <leader>, :GoDefPop<CR>


map <C-.> :GoDef<CR>

let g:fugitive_git_executable = 'LANG=en_US.UTF-8 git'

nnoremap <silent> <leader>gs :Gstatus<CR>
nnoremap <silent> <leader>gd :Gdiff<CR>
nnoremap <silent> <leader>gc :Gcommit<CR>
nnoremap <silent> <leader>gb :Gblame<CR>

""""""""""""""""""""""""""""""
" => Status line
""""""""""""""""""""""""""""""
" Always show the status line
set laststatus=2

" Format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Helper functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    endif
    return ''
endfunction

