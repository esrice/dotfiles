" map C-n and C-p to :tabn and :tabp
nmap <silent> <C-n> :tabnext<CR>
nmap <silent> <C-p> :tabprev<CR>
imap <silent> <C-n> <esc><C-n>
imap <silent> <C-p> <esc><C-p>

" tab and indent settings
if has("autocmd")
    filetype plugin indent on " use language-specific indentation
endif
set autoindent     " keep indentation of previous line by default
set expandtab      " use spaces instead of hard tabs
set tabstop=4      " use four spaces
set shiftwidth=4   " display tabs with width four

" extra whitespace highlighting
highlight ExtraWhitespace ctermbg=red guibg=red
au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
au InsertLeave * match ExtraWhitespace /\s\+$/

" misc settings
set showmatch
set bs=2
set mouse=a        " enable mouse use
syntax enable      " enable syntax highlighting
"colorscheme arnika " set color scheme
set cc=81          " mark column limit
set background=dark

call plug#begin('~/.local/share/nvim/plugged')
Plug 'davidhalter/jedi-vim'
"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"Plug 'zchee/deoplete-jedi'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
Plug 'neomake/neomake'
let g:neomake_python_enabled_makers = ['pylint']
let g:deoplete#enable_at_startup = 1
let g:airline_powerline_fonts = 1
call plug#end()
