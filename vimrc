execute pathogen#infect()

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
set completeopt-=preview
let g:ycm_add_preview_to_completeopt = 0

:nnoremap <C-n> :bnext<CR>

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_max_files = 0

let g:airline_theme = 'murmur'
let g:airline#extensions#tabline#enabled = 1

set wildignore+=*/bin/*,*/chef/*,*/ci/*,*/conf/*,*/dev_setup/*,*/end-to-end-tests/*,*/hadoop-data/*,*/js-aws/*,*/license/*,*/logs/*,*/nagios/*,*/pig-udfs/*,*/scripts/*,*/vagrant-setup/*,*/test-framework/*,*/triflow/*,*/triconf/*,*/node_modules/*

set laststatus=2

filetype plugin indent on
set mouse=a
set gcr=i:ver10 

"turn backup related shit off
set nobackup
set nowb
set noswapfile

"don't redraw while executing macros
"set lazyredraw

"when searching, try to be smart about cases
set smartcase

"jj for escape
:imap jj <Esc>

"remap hjkl to jkl;
:noremap l h
:noremap ; l 
:noremap h ;

"--------------completetions--------------"
"js
:inoremap f() function() {<cr>}<esc>2ba
:inoremap iff if() {<cr>}<esc>2ba

"lodash/underscore
:inoremap map() _.map(, function(){<cr>});<esc>4ba 
:inoremap each() _.each(, function(){<cr>});<esc>4ba
:inoremap reduce() _.reduce(, function(){<cr>});<esc>4ba

"backbone
:inoremap l2() this.listenTo(, '', function() {<cr>});<esc>6ba
