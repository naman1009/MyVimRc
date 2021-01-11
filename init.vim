noremap <C-J> "add"ap
noremap <C-K> "addkk"ap
imap <c-bs> <C-w> 
set nu
set tabstop=8 softtabstop=0 expandtab shiftwidth=4
set nornu
set noerrorbells
set mouse=a
set autoindent
set noswapfile
set nobackup
set undofile
set wrap
set incsearch
set undodir=~/.vim/undodir
set backspace=indent,eol,start
set colorcolumn=80
set background=dark
set autochdir
highlight ColorColumn ctermbg=0 guibg=lightgrey
imap <s><s>  <Esc>
noremap <A-K> "add"ap
noremap <A-J> "add"ap
imap <c-bs> <C-w>
noremap <C-c> "+y
noremap <C-d> "_dd
let g:mapleader=" "
nmap <Leader>t :NERDTree %<CR>
nmap <Leader>; <C-w><C-l>
nmap <Leader>l <C-w><C-k>
nmap <Leader>k <C-w><C-j>
nmap <Leader>j <C-w><C-h>
nmap <Leader>c :Colors<CR>
nmap <C-p> :Files<CR>
nmap <Leader>hs :sp<CR>
nmap <Leader>us :vsp<CR>
nmap <Leader>n :noh<CR>
nmap <Leader>m :MaximizerToggle<CR>
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gr <Plug>(coc-references)
nmap <Leader>dd :call vimspector#Launch()
nmap <Leader>dl <Plug>VimspectorStepInto
nmap <Leader>dj <Plug>VimspectorStepOver
nmap <Leader>dk <Plug>VimspectorStepOut
nmap <Leader>d_ <Plug>VimspectorRestart
nmap <Leader>drc <Plug>VimspectorRunToCursor
nmap <Leader>r :RnvimrToggle<CR>
nmap <Leader>rn <Plug>(coc-rename)
nmap <Leader>prw :CocSearch <C-R>=expand("<cword>")<CR><CR>
let g:vimspector_enable_mappings = 'HUMAN'
let g:rnvimr_ex_enable = 1
nmap <Leader>~ <Plug>(coc-terminal-toggle)
call plug#begin('~/.vim/plugged')
Plug 'OmniSharp/omnisharp-vim'
Plug 'mbbill/undotree'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdcommenter'
Plug 'christoomey/vim-tmux-navigator'
Plug 'morhetz/gruvbox'
Plug 'calviken/vim-gdscript3'
Plug 'ThePrimeagen/vim-be-good'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'habamax/vim-godot'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'puremourning/vimspector'
Plug 'szw/vim-maximizer'
" Optional:
Plug 'honza/vim-snippets'
Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
call plug#end()
source ~/.fzf/plugin/fzf.vim

let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-eslint', 
  \ 'coc-prettier', 
  \ 'coc-ccls',
  \ 'coc-json', 
  \ 'coc-omnisharp',
  \ 'coc-python'
  \ ]
inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'
color palenight
let g:material_theme_style = "ocean-community"
let g:airline_theme='palenight'
" lightline
"ocean let g:lightline = { 'colorscheme': 'onehalfdark' }
if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if (has("termguicolors"))
  set termguicolors
endif
let g:palenight_terminal_italics=1
let g:NERDTreeDirArrows=0
if has("autocmd")
    au InsertEnter *
        \ if v:insertmode == 'i' |
        \   silent execute "!gnome-terminal-cursor-shape.sh ibeam" |
        \ elseif v:insertmode == 'r' |
        \   silent execute "!gnome-terminal-cursor-shape.sh underline" |
        \ endif
    au InsertLeave * silent execute "!gnome-terminal-cursor-shape.sh block"
    au VimLeave * silent execute "!gnome-terminal-cursor-shape.sh block"
endif
let NERDTreeShowHidden=1
let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -l -g ""'

highlight Normal guibg=none
