execute pathogen#infect()

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_max_files = 0

let g:airline_theme = "murmur"

let g:airline#extensions#tabline#enabled = 1

set wildignore+=*/bin/*,*/chef/*,*/ci/*,*/conf/*,*/dev_setup/*,*/end-to-end-tests/*,*/hadoop-data/*,*/js-aws/*,*/license/*,*/logs/*,*/nagios/*,*/pig-udfs/*,*/scripts/*,*/vagrant-setup/*,*/test-framework/*,*/triflow/*,*/triconf/*,*/node_modules/*





syntax on
colorscheme molokai

set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set smarttab
set number
set hlsearch

set laststatus=2

filetype plugin indent on
set mouse=a
set gcr=i:ver10

:imap jj <Esc>

noremap l h
noremap ; l 
noremap h ;

