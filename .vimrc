call plug#begin()
Plug 'airblade/vim-gitgutter'
Plug 'bling/vim-airline'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'palsivertsen/molokai'
Plug 'scrooloose/nerdtree' | Plug 'Xuyuanp/nerdtree-git-plugin'
" Plug 'vim-syntastic/syntastic' | Plug 'Valloric/YouCompleteMe' | Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'osyo-manga/vim-brightest'
Plug '~/projects/vim/lowercase-dockerfile'
Plug 'Shougo/deoplete.nvim', { 'tag': '5.0' }
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'deoplete-plugins/deoplete-go', { 'do': 'make'}

Plug 'ervandew/supertab'
Plug 'majutsushi/tagbar'
call plug#end()

call deoplete#custom#option({
\ 'auto_complete_delay': 0,
\ 'smart_case': v:true,
\ })

" completion
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#go#package_dot = 1
let g:deoplete#sources#go#pointer = 1
let g:deoplete#sources#go#builtin_objects = 1
let g:deoplete#sources#go#unimported_packages = 1

set nu rnu
set noexpandtab tabstop=2 shiftwidth=2
set hlsearch
set autochdir
set ignorecase
set wildmenu
set scrolloff=999

" vim-go
let g:go_list_type = "quickfix"
let g:go_fmt_command = "goimports"
let g:go_fmt_fail_silently = 1
let g:go_addtags_transform = "camelcase"
let g:go_auto_type_info = 1
" highlighing
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_build_constraints = 1
" keybindings
autocmd Filetype go command! -bang A call go#alternate#Switch(<bang>0, 'edit')
autocmd Filetype go command! -bang AV call go#alternate#Switch(<bang>0, 'vsplit')
autocmd Filetype go command! -bang AS call go#alternate#Switch(<bang>0, 'split')
autocmd Filetype go command! -bang AT call go#alternate#Switch(<bang>0, 'tabe')
" navigate quickfix
nnoremap <c-c><c-h> :cfirst<cr>
nnoremap <c-c><c-j> :cnext<cr>
nnoremap <c-c><c-k> :cprevious<cr>
nnoremap <c-c><c-l> :clast<cr>

" window tabs
nnoremap <C-t><C-h>  :tabfirst<CR>
nnoremap <C-t><C-j>  :tabnext<CR>
nnoremap <C-t><C-k>  :tabprev<CR>
nnoremap <C-t><C-l>  :tablast<CR>
nnoremap <C-t><C-t>  :tabedit<Space>
nnoremap <C-t><C-n>  :tabnew<CR>
nnoremap <C-t><C-m>  :tabmove<Space>
nnoremap <C-t><C-d>  :tabclose<CR>

" resize window
nnoremap <C-w><C-m>  :execute('resize ' . line('$'))<CR>

" Completion
"let g:ycm_key_list_select_completion = ['<tab>', '<Down>']
"let g:ycm_key_list_previous_completion = ['<s-tab>', '<Up>']
let g:UltiSnipsExpandTrigger = "<C-space>"
let g:UltiSnipsJumpForwardTrigger = "<C-j>"
let g:UltiSnipsJumpBackwardTrigger = "<C-k>"

" Molokai
let g:rehash256 = 1
colorscheme molokai

" ctrlp
let g:ctrlp_show_hidden = 1

" Jump to the last position when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
