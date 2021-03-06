" Get some extra stuff from external
" files to keep down the clutter here.
source ~/.vim/vundlerc
source ~/.vim/functions
source ~/.vim/statusline

" gtfo swapfiles
set directory=~/.vim/swp

" sessions
let g:session_autosave=1
let g:session_autoload=1

" syntax highlighting, line numbers
syntax on
colorscheme kosmos
set cursorline
"set cursorcolumn
set relativenumber  " ha ha ha, time to fuck with people.
set hlsearch
" always keep at least 5 lines over/under the cursor while scrolling
set scrolloff=5

" ScreenShell settings
let g:ScreenShellExternal=1

" use the OS clipboard
set clipboard=unnamed

" complete options
set completeopt+=menuone
set completeopt-=preview
set pumheight=20

" some toggle switches
noremap <F4> :set number! number?<CR>
noremap <F5> :set hlsearch! hlsearch?<CR>

" 8 space tabs are bad and you should feel bad if you use them
set expandtab
set tabstop=4
set shiftwidth=4

" wrap after 80 chars
set tw=80
set colorcolumn=81
" global format options. ftplugin files should only += these.
" NOTE: manual formatting can be achieved with 'gq'
set formatoptions=tcroqnlj

" mouse? in my vim? I don't think so.
set mouse=

" tabs, motherfucker, do you use them?
" No.
"nmap <C-t> :tabnew<CR>
"map th :tabfirst<CR>
"map tj :tabnext<CR>
"map tk :tabprevious<CR>
"map tl :tablast<CR>
"map tt :tabedit<Space>
"map tm :tabmove<Space>

" various stuff
nmap <CR> o<Esc>

set wildmenu
set wildmode=longest:full
set wildignore=*.o,*a,*.py[oc]

" When .vimrc is edited, automatically reload it (stolen from eeemsi)
autocmd! bufwritepost .vimrc source ~/.vimrc

" use very magic search
nnoremap / /\v
nnoremap ? ?\v
cnoremap s/ s/\v

" overwrite read-only with sudo
cmap w!! %!sudo tee > /dev/null %

" hidden buffers
set hidden
