:set number
:set relativenumber
:set tabstop=4
:set autoindent
:set shiftwidth=4
:set softtabstop=4
:set smarttab
:set mouse=a

call plug#begin()

Plug 'https://github.com/NLKNguyen/papercolor-theme'	" Theme 
Plug 'https://github.com/vim-airline/vim-airline'		" Airline
Plug 'https://github.com/preservim/nerdtree'			" Nerdtree
Plug 'https://github.com/tpope/vim-commentary'			" Comment gcc & gc
Plug 'https://github.com/preservim/tagbar'				" Tagbar for code navigation
Plug 'https://github.com/neoclide/coc.nvim'				" Auto Completion
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }		"Markdown preview

call plug#end()

" Vim configuration

nnoremap <C-j> :+
nnoremap <C-k> :-
nnoremap <A-k> :m .-2<CR>==
nnoremap <A-j> :m .+1 <CR>==
nnoremap <A-Up> :m .-2<CR>==
nnoremap <A-Down> :m .+1 <CR>==


" NerdTree configuration
" NerdTree needs a Nerdfont to work well

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>


" Tagbar configuration
" To work with Tagbar install the following
" sudo apt install exuberant-ctags

nmap <F8> :TagbarToggle<CR>


" Conqueror of Completion configuration
" Install the following to work:
" sudo apt install nodejs npm
" sudo npm install yarn
" inside the coc folder run:
" yarn install && yarn build

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
 
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"


" Theme configuration

set background=dark
colorscheme PaperColor


" Markdown preview configuration
nmap <F7> :MarkdownPreview<CR>

