set number
set relativenumber
set mouse=a
set autoindent
set tabstop=2

" Alias
nnoremap <C-c> :NERDTreeToggle<CR>

" PlugIn
call plug#begin('~/AppData/Local/nvim/plugged')

Plug 'preservim/nerdtree'
Plug 'jdhao/better-escape.vim' " mapped to 'jk' for escaping INSERT mode
Plug 'prettier/vim-prettier', { 'do': 'npm install --frozen-lockfile --production' } " Prettier
Plug 'godlygeek/tabular' | Plug 'preservim/vim-markdown' " Markdown

call plug#end()

" Markdown
let g:vim_markdown_folding_disabled = 1 " Disable folding

" Prettier
" autoformatting files on save without @format or @prettier tags
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0