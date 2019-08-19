set nu

syntax on

set ts=4
set expandtab

let mapleader=','
inoremap <leader>w <Esc>:w<cr>

inoremap jj <Esc>


noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-l>l

map <C-n> :NERDTreeToggle<CR>
call plug#begin('~/.vim/plugged')

Plug 'mhinz/vim-startify'

Plug 'scrooloose/nerdtree'

Plug 'vim-airline/vim-airline'

Plug 'vim-airline/vim-airline-themes'

Plug 'yggdroot/indentline'

Plug 'scwood/vim-hybrid'

Plug 'altercation/vim-colors-solarized'

Plug 'morhetz/gruvbox'

Plug 'kien/ctrlp.vim'

Plug 'easymotion/vim-easymotion'

Plug 'anyakichi/vim-surround'

"模糊搜索
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
"
Plug 'brooth/far.vim'
"
Plug 'majutsushi/tagbar'
"
Plug 'vasconcelloslf/vim-interestingwords'
"
Plug 'sbdchd/neoformat'
"
Plug 'rhysd/vim-clang-format'

Plug 'vim-scripts/ctags.vim'

call plug#end()



let g:clang_format#style_options = {
            \ "AccessModifierOffset" : -4,
            \ "AllowShortIfStatementsOnASingleLine" : "true",
            \ "AlwaysBreakTemplateDeclarations" : "true",
            \ "Standard" : "C++11"}

" map to <Leader>cf in C++ code
autocmd FileType c,cpp,objc nnoremap <buffer><Leader>cf:<C-u>ClangFormat<CR>
autocmd FileType c,cpp,objc vnoremap <buffer><Leader>cf :ClangFormat<CR>
" if you install vim-operator-user
autocmd FileType c,cpp,objc map <buffer><Leader>x <Plug>(operator-clang-format)
" Toggle auto formatting:
nmap <Leader>C :ClangFormatAutoToggle<CR>
nmap ss <Plug>(easymotion-s2)

nnoremap <leader>t :TagbarToggle<CR>

let g:ctags_path='/path/to/ctags'
let g:ctags_args='-I __declspec+' 





