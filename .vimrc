if 0 | endif

if &compatible
set nocompatible               " Be iMproved
endif

set runtimepath+=~/.vim/bundle/neobundle.vim/
call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'taglist.vim'
NeoBundle 'unite.vim'
NeoBundle 'a.vim'
NeoBundle 'surround.vim'
NeoBundle 'molokai'
NeoBundle 'dhruvasagar/vim-table-mode'
NeoBundle 'gtags.vim'
NeoBundle 'thinca/vim-quickrun'
NeoBundle 'davidhalter/jedi-vim'

" Do not load vim-pyenv until *.py is opened and
" make sure that it is loaded after jedi-vim is loaded.
NeoBundle 'Shougo/vimproc.vim', {
\ 'build' : {
\     'mac' : 'make',
\     'linux' : 'make',
\    },
\ }

NeoBundleLazy 'lambdalisue/vim-pyenv', {
\ 'depends': ['davidhalter/jedi-vim'],
\ 'autoload': {
\   'filetypes': ['python', 'python3'],
\ }}

call neobundle#end()

filetype plugin indent on

NeoBundleCheck
syntax on

set listchars=tab:>-,eol:$
set history=100
set smartcase
set number
set hls
set sw=4 ts=4 et
set backup
set backupdir=~/.vim/tmp
set directory=~/.vim/tmp
set backspace=indent,eol,start

augroup unite
    autocmd!
    autocmd FileType unite nnoremap <silent> <buffer> <expr> t unite#do_action('tabopen')
    autocmd FileType unite imap <buffer> <c-w> <plug>(unite_delete_backward_path)
    autocmd FileType unite nmap <buffer> <ESC> <plug>(unite_exit)
augroup END

colorscheme molokai
set background=dark
set t_Co=256

nnoremap <silent> <space>uu :<c-u>Unite -buffer-name=mru file_mru buffer<CR>
nnoremap <silent> <space>uf :<c-u>UniteWithBufferDir -buffer-name=files file<CR>

nnoremap <space><space> :<c-u>TlistOpen \| TlistHighlightTag<CR>

nnoremap g] :<c-u>GtagsCursor<CR>

cnoremap <c-g> <c-u>vimgrep<space><c-r><c-w><space>**/*.
autocmd QuickFixCmdPost *grep* cwindow

let g:jedi#auo_initializationt = 0
let g:jedi#auto_vim_configuration = 0
let g:jedi#popup_on_dot = 0
let g:jedi#popup_select_first = 0
let g:jedi#goto_command = "<C-]>"
let g:jedi#completions_command = "<C-F>"


let g:table_mode_corner_corner="+"
let g:table_mode_header_fillchar="="

"set spell
hi SpellBad cterm=underline
hi PmenuSel ctermfg=81 ctermbg=234 cterm=bold

let g:quickrun_config = {
\   "_" : {
\       "outputter": "quickfix",
\       "outputter/buffer/close_on_empty" : 1,
\       "runner" : "vimproc",
\       "runner/vimproc/updatetime" : 60
\   }
\}
