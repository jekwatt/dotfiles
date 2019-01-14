" Basic setup

" Enter the current millennium
set nocompatible

" Enable syntax and plugins
" execute pathogen#infect() # TODO download pathogen
syntax on
filetype plugin indent on

" Start of my .vimrc
set laststatus=2
set smartindent
set tabstop=4
set et
set shiftwidth=4
set expandtab
syntax on
highlight Normal ctermfg=grey ctermbg=black

set ruler
set title

" Set hybrid numbers
set number relativenumber

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

" Map the <esc> key
inoremap jk <ESC>
" inoremap <ESC> <Nop>

" Unmap the arrow keys
no <down> ddp
no <left> <Nop>
no <right> <Nop>
no <up> ddkP
ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>
ino <up> <Nop>
vno <down> <Nop>
vno <left> <Nop>
vno <right> <Nop>
vno <up> <Nop>

set virtualedit=onemore

" Change mapleader
let mapleader = ","

" Quick pairs
imap <leader>' ''<ESC>i
imap <leader>" ""<ESC>i
imap <leader>( ()<ESC>i
imap <leader>[ []<ESC>i

set showcmd
set wildmenu

" Use repeat operator with a visual selection
vnoremap . :normal .<cr>
set hlsearch
set smartcase
set incsearch

" Split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Show when lines extend past column 80
highlight ColorColumn ctermfg=208 ctermbg=Black

function! MarkMargin (on)
    if exists('b:MarkMargin')
        try
            call matchdelete(b:MarkMargin)
        catch /./
        endtry
        unlet b:MarkMargin
    endif
    if a:on
        let b:MarkMargin = matchadd('ColorColumn', '\%81v\s*\S', 100)
    endif
endfunction

augroup MarkMargin
    autocmd!
    autocmd  BufEnter  *       :call MarkMargin(1)
    autocmd  BufEnter  *.vp*   :call MarkMargin(0)
augroup END

" leader-j to insert blank in space below, and leader-k in below
nnoremap <leader>j mao<Esc>`a
nnoremap <leader>k maO<Esc>`a

" Execute a command and show it's output in a split window
command! -nargs=* -complete=shellcmd Rsplit execute "new | r! <args>"

" Execute a command and show it's output in a new tab
command! -nargs=* -complete=shellcmd Rtab execute "tabnew | r! <args>"

" Vertically-split windows to open to the right
set splitright

" All splits open below the current window
set splitbelow

" See white spaces
set list listchars=tab:»·,trail:·

" To turn off bracketed paste mode
set t_BE=

" Set maximum number of lines saved in a register between sessions
set viminfo='20,<1000
