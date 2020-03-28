" ######### Name: Elzinus
" __     _____ __  __ ____   ____
" \ \   / /_ _|  \/  |  _ \ / ___|
"  \ \ / / | || |\/| | |_) | |
"  _\ V /  | || |  | |  _ <| |___
" (_)\_/  |___|_|  |_|_| \_\\____|
"
" ######### .vimrc 2020.0.1


" VUNDLE Plugin Manager
set nocompatible                            " be iMproved, required
filetype off                                " required
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'joanrivera/vim-zimwiki-syntax'
call vundle#end()

filetype plugin indent on                   " required
" To ignore plugin indent changes,
" instead use: filetype plugin on


" PLUGGED Another Plugin Manager
call plug#begin('~/.vim/plugged')
Plug 'junegunn/goyo.vim'
Plug 'rafaqz/citation.vim'
Plug 'scrooloose/nerdtree'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
call plug#end()


" GENERAL & LAYOUT SETTINGS
" Document settings
:set tabstop=4
:set shiftwidth=4
:set autoindent
:set expandtab

"Remove trailing spaces when save
fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun

autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()


" VIEW
set splitbelow splitright
set laststatus=2                            "Show statusbar
let g:airline_theme='luna'                  "Statusbar theme (plug)
set display+=lastline 		                "Show parts of long lines
set number


"set scrolloff=999			                "Edit line in middle of page

augroup VCenterCursor
  au!
  au BufEnter,WinEnter,WinNew,VimResized *,*.*
        \ let &scrolloff=winheight(win_getid())/2
augroup END


let g:vim_markdown_folding_disabled = 1
set conceallevel=2                          "vim-markdown hide syntax

:syntax on
:hi SpellBad ctermfg=016 ctermbg=190
            \ cterm=none guifg=#FFFFFF
            \ guibg=#000000 gui=none
:hi CursorLine cterm=NONE ctermbg=darkred
            \ ctermfg=white guibg=darkred
            \ guifg=white
:set showbreak=....\ \ \ \ \ \ \ \ \

"Wiki & HTML headers bold & red
:highlight zimwikiHeader1 cterm=bold
:highlight zimwikiHeader2 cterm=bold ctermfg=210
:highlight zimwikiHeader3 cterm=bold ctermfg=210
:highlight zimwikiHeader4 cterm=bold ctermfg=210
:highlight zimwikiHeader5 cterm=bold ctermfg=210
:highlight zimwikiHeader6 cterm=bold ctermfg=210

:highlight htmlH1 cterm=bold
:highlight htmlH2 cterm=bold ctermfg=210
:highlight htmlH3 cterm=bold ctermfg=210
:highlight htmlH4 cterm=bold ctermfg=210
:highlight htmlH5 cterm=bold ctermfg=210
:highlight htmlH6 cterm=bold ctermfg=210

"Highlight TODO (all files)
augroup HiglightTODO
    autocmd!
    autocmd WinEnter,VimEnter * :silent!
                \ call matchadd('Todo', 'TODO',
                \ 'TODO:', -1)
augroup END


" EDIT
" Search highlighting + case insensitive search
:set hlsearch
:set ignorecase
:set incsearch
:set clipboard=unnamedplus
:set wrap linebreak nolist

:set wildmode=longest,list,full             "Enable autocompletion
:set modifiable                             "Enables deleting with NerdTree
:set mouse=a                                "Mouse scroll off

" ===== Folding Save
"au bufWinLeave * mkview
"au bufWinEnter * silent loadview


" ===== Ultisnip Settings
" Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"


" ====== PLACEHOLDER
" See: Luke Smith https://www.youtube.com/watch?v=Q4I_Ft-VLAg
" NOTE: Luke uses nice remappings to autocmd and inoremap
" for autocompletion. (I use Ultisnips)

set nocompatible
filetype plugin on

" Set autokey to placeholder and remove it (_ is empty
" placeholder so you wont have to deal with it if you
" copied something else into your buffer
inoremap <Space><Space> <Esc>/<++><Enter>"_c4l



" ======= KEYBOARD MAPPINGS
map <leader>nn :NERDTree<Enter>             "Nerdtree
map <leader>n :NERDTreeClose<Enter>
map <leader>f :Goyo \|set linebreak<CR>     "Goyo on leader hotkey
map <leader>s :set<Space>spell<Space>       "Spell
        \ spelllang=nl,en<Enter>

let g:netrw_browser_viewer='open'           "'gx' opens url
noremap <C-B> i<CR><Esc>k$                  "Move remaining to new line
vnoremap <C-c> "*y"                         "Copy to system clipboard with ctrl-c
                                            "\ (opposite of SHF-J)

" Movement keys allowed over wrapped lines
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk
nnoremap <Down> gj
nnoremap <Up> gk
vnoremap <Down> gj
vnoremap <Up> gk
inoremap <Down> <C-o>gj
inoremap <Up> <C-o>gk

" Movement of the Mouse disable scroll
:nmap <ScrollWheelUp> <nop>
:nmap <S-ScrollWheelUp> <nop>
:nmap <C-ScrollWheelUp> <nop>
:nmap <ScrollWheelDown> <nop>
:nmap <S-ScrollWheelDown> <nop>
:nmap <C-ScrollWheelDown> <nop>
:nmap <ScrollWheelLeft> <nop>
:nmap <S-ScrollWheelLeft> <nop>
:nmap <C-ScrollWheelLeft> <nop>
:nmap <ScrollWheelRight> <nop>
:nmap <S-ScrollWheelRight> <nop>
:nmap <C-ScrollWheelRight> <nop>

:imap <ScrollWheelUp> <nop>
:imap <S-ScrollWheelUp> <nop>
:imap <C-ScrollWheelUp> <nop>
:imap <ScrollWheelDown> <nop>
:imap <S-ScrollWheelDown> <nop>
:imap <C-ScrollWheelDown> <nop>
:imap <ScrollWheelLeft> <nop>
:imap <S-ScrollWheelLeft> <nop>
:imap <C-ScrollWheelLeft> <nop>
:imap <ScrollWheelRight> <nop>
:imap <S-ScrollWheelRight> <nop>
:imap <C-ScrollWheelRight> <nop>

:vmap <ScrollWheelUp> <nop>
:vmap <S-ScrollWheelUp> <nop>
:vmap <C-ScrollWheelUp> <nop>
:vmap <ScrollWheelDown> <nop>
:vmap <S-ScrollWheelDown> <nop>
:vmap <C-ScrollWheelDown> <nop>
:vmap <ScrollWheelLeft> <nop>
:vmap <S-ScrollWheelLeft> <nop>
:vmap <C-ScrollWheelLeft> <nop>
:vmap <ScrollWheelRight> <nop>
:vmap <S-ScrollWheelRight> <nop>
:vmap <C-ScrollWheelRight> <nop>

" Split Screen navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

