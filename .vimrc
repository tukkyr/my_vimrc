set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'taglist.vim'
Plugin 'unite.vim'
Plugin 'a.vim'
Plugin 'surround.vim'
Plugin 'molokai'
Plugin 'davidhalter/jedi-vim'
Plugin 'jmcantrell/vim-virtualenv'
Plugin 'dhruvasagar/vim-table-mode'

call vundle#end()
filetype plugin indent on
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
set background=dark
set t_Co=256

augroup myhi
    autocmd!
    autocmd ColorScheme * hi PmenuSel ctermfg=81  ctermbg=234 cterm=bold
augroup END

augroup unite
    autocmd!
    autocmd FileType unite nnoremap <silent> <buffer> <expr> t unite#do_action('tabopen')
    autocmd FileType unite imap <buffer> <c-w> <plug>(unite_delete_backward_path)
    autocmd FileType unite nmap <buffer> <ESC> <plug>(unite_exit)
augroup END

colorscheme molokai

nnoremap <silent> <space>uu :<c-u>Unite -buffer-name=mru file_mru buffer<CR>
nnoremap <silent> <space>uf :<c-u>UniteWithBufferDir -buffer-name=files file<CR>

nnoremap <space><space> :<c-u>TlistOpen \| TlistHighlightTag<CR>

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

set spell
hi SpellBad cterm=underline
hi PmenuSel ctermfg=81 ctermbg=234 cterm=bold
