call plug#begin()
Plug 'airblade/vim-gitgutter'
Plug 'bling/vim-airline'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'palsivertsen/molokai'
Plug 'scrooloose/nerdtree' | Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'vim-syntastic/syntastic' | Plug 'Valloric/YouCompleteMe' | Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'osyo-manga/vim-brightest'
call plug#end()

set nu rnu
set noexpandtab tabstop=2 shiftwidth=2
set hlsearch
set autochdir
set ignorecase
set wildmenu
set scrolloff=10

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

nnoremap <C-t>h  :tabfirst<CR>
nnoremap <C-t>j  :tabnext<CR>
nnoremap <C-t>k  :tabprev<CR>
nnoremap <C-t>l  :tablast<CR>
nnoremap <C-t>t  :tabedit<Space>
nnoremap <C-t>n  :tabnew<CR>
nnoremap <C-t>m  :tabmove<Space>
nnoremap <C-t>d  :tabclose<CR>

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_go_checkers = ['gometalinter']
let g:syntastic_go_gometalinter_args = '--aggregate --disable-all --enable test --enable testify --enable gosec --enable goconst --enable gocyclo --enable golint --enable gotypex --enable ineffassign --enable misspell --enable vet --enable vetshadow'
let g:syntastic_go_gometalinter_sort = 1
map <c-c><c-h> :lfirst<cr>
map <c-c><c-j> :lnext<cr>
map <c-c><c-k> :lprevious<cr>
map <c-c><c-l> :llast<cr>

" YCM
let g:ycm_complete_in_comments = 1
let g:ycm_complete_in_strings = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_autoclose_preview_window_after_completion = 1

" Completion
let g:ycm_key_list_select_completion = ['<tab>', '<Down>']
let g:ycm_key_list_previous_completion = ['<s-tab>', '<Up>']
let g:UltiSnipsExpandTrigger = "<C-space>"
let g:UltiSnipsJumpForwardTrigger = "<C-j>"
let g:UltiSnipsJumpBackwardTrigger = "<C-k>"

" Molokai
let g:rehash256 = 1
colorscheme molokai

" Damian Conways ColorColumn
" Marks lines that exceeds 80 columns
highlight ColorColumn ctermbg=cyan ctermfg=black
call matchadd('ColorColumn', '\%81v', 100)

" ctrlp
let g:ctrlp_show_hidden = 1

" Jump to the last position when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
