call plug#begin("~/.vim/plugged")
    "Plugin Section
    Plug 'phanviet/vim-monokai-pro'
    Plug 'scrooloose/nerdtree'


    Plug 'ryanoasis/vim-devicons'

    Plug 'rust-lang/rust.vim'

    Plug 'alunny/pegjs-vim'

    Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }


    Plug 'tpope/vim-rhubarb'
    Plug 'dense-analysis/ale'
    
    Plug 'ap/vim-css-color'

    Plug 'wfxr/protobuf.vim'


    Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }


    "Git plugin
    Plug 'tpope/vim-fugitive'
    Plug 'airblade/vim-gitgutter'

    "Python
    Plug 'psf/black', { 'branch': 'stable' }

    " prisma
    Plug 'pantharshit00/vim-prisma'

    " Ctrl P search
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'junegunn/fzf.vim'

    " Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug  'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}

    let g:coc_global_extensions = [
    \    'coc-css',
    \    'coc-emmet',
    \    'coc-eslint',
    \    'coc-html',
    \    'coc-json',
    \    'coc-prettier',
    \    'coc-biome',
    \    'coc-prisma',
    \    'coc-tsserver'
    \]

   

    Plug 'leafgarland/typescript-vim'
    Plug 'peitalin/vim-jsx-typescript'

    Plug 'vim-airline/vim-airline'
call plug#end()

" Color Configuration
syntax on
"colorscheme molokai
colorscheme monokai_pro

" Buf
let g:ale_linters = {
\   'proto': ['buf-lint'],
\}
let g:ale_lint_on_text_changed = 'never'
let g:ale_linters_explicit = 1

let g:ale_fixers = {
\   'proto': ['buf-format'],
\}
let g:ale_fix_on_save = 1


" NERD Tree
let g:NERDTreeShowHidden = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''


" Rust
let g:rustfmt_autosave = 1
let g:rustfmt_emit_files = 1
let g:rustfmt_fail_silently = 0

"FZF via Ctrl P
set rtp+=/usr/local/bin/fzf
:nnoremap <C-p> :Files `git rev-parse --show-toplevel`<CR>

" timing for Esc
set guicursor=
"set timeoutlen=0
set ttimeoutlen=0
set nottimeout


" show line numbers
set number
set smartindent
set tabstop=2
set shiftwidth=2
set autoindent
set expandtab
set smarttab
set hlsearch
set number

set clipboard=unnamed
set clipboard+=unnamedplus


" 'p' to paste, 'gv' to reselect what was just selecter prior to
" paste and 'y' to copy it again
xnoremap p pgvy

" Beccause I fat finger everything
:command W w
:command Q q
:command Wall wall
:command Qall qall
:command Wq wq
:command WQ wq


"buffer navigation
:nnoremap <C-l> :bnext<CR>
:nnoremap <C-h> :bprevious<CR>

" Set working dir to current file's dir
autocmd BufEnter * silent! lcd %:p:h



" Delete trailing whitspace
:nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

" use return to confirm completion
inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

" testing coc-prettier
"set runtimepath^=~/repos/forks/coc-prettier

"set runtimepath^=/home/joe/repos/coc-package-json/

" WORKING VERSION
" Use K to show documentation in preview window
" nnoremap <silent> K :call CocAction('doHover')<CR>


" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction


" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

set exrc
set secure
