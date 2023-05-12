"" set theme to dracula : https://draculatheme.com/vim
"packadd! dracula
"syntax enable
"colorscheme dracula
:set number
":set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a

call plug#begin()

Plug 'https://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'https://github.com/neoclide/coc.nvim' " Auto Completion
Plug 'motemen/git-vim' " Git 

set encoding=UTF-8

call plug#end()

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>
nnoremap <silent> <C-_> :Commentary<CR>
vnoremap <silent> <C-_> :Commentary<CR>
inoremap <silent> <C-_> <esc>:Commentary<CR>a
vnoremap <silent> <C-S-c> "+ygv
" inoremap <C-s> <esc>:w<CR>a
" nnoremap <C-s> :w<CR>
nnoremap <c-s> :<c-u>update<cr>
vnoremap <c-s> <c-c>:update<cr>gv
inoremap <c-s> <c-o>:update<cr>

nmap <silent> <F8> :TagbarToggle<CR>
nmap <silent> <F7> :NERDTreeToggle \| NERDTreeRefreshRoot<CR>

:set completeopt-=preview " For No Previews

:colorscheme jellybeans

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

" --- Just Some Notes ---
" :PlugClean :PlugInstall :UpdateRemotePlugins
"
" :CocInstall coc-python
" :CocInstall coc-clangd
" :CocInstall coc-snippets
" :CocCommand snippets.edit... FOR EACH FILE TYPE

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
set guifont=JetBrainsMonoNL\ NF\ 10


inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"

let g:syntastic_python_checkers = ['pylint']
let g:syntastic_python_pylint_exe = '/home/mohammad/anaconda3/bin/pylint'
let g:python_host_prog= '/usr/bin/python'
let g:python3_host_prog= '/usr/bin/python3'
