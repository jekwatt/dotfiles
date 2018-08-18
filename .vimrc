"pathogen plugin
execute pathogen#infect()
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
set relativenumber
set number

"map the <esc> key
inoremap jk <esc>
inoremap <esc> <nop>

"unmap the arrow keys
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

"quick pairs
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

"change mapleader
let mapleader = ","

"Ctr-j to insert blank in space below, and Ctrl-k in below
nnoremap <C-J> mao<Esc>`a
nnoremap <C-K> maO<Esc>`a
" See white spaces
set list listchars=tab:»·,trail:·
