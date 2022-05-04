set number
set relativenumber
set mouse=a " Mouse active
set clipboard=unnamedplus " Enables the clipboard between Vim and other applications

" This insert 2 spaces insted of a tab because spaces are a bit more 'stable'
set tabstop=2
set shiftwidth=2
set expandtab

" Alias
nnoremap <C-c> :NERDTreeFocus<CR>

" Plug Vim
call plug#begin('~/AppData/Local/nvim/plugged')

Plug 'preservim/nerdtree'
Plug 'jdhao/better-escape.vim' " mapped to 'jk' for escaping INSERT mode
Plug 'prettier/vim-prettier', { 'do': 'npm install --frozen-lockfile --production' } " Prettier
Plug 'godlygeek/tabular' | Plug 'preservim/vim-markdown' " Markdown

call plug#end()

" NERDTree
let NERDTreeQuitOnOpen=1 " Close NERDTree when a file is open
let g:NERDTreeShowHidden = 1 " Show hidden files

" Markdown
let g:vim_markdown_folding_disabled = 1 " Disable folding

" Prettier
" autoformatting files on save without @format or @prettier tags
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0
