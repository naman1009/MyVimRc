"sets
"{
set nu
set tabstop=8 softtabstop=0 expandtab shiftwidth=4
set foldmethod=indent
set rnu
set noerrorbells
set mouse=a
set timeoutlen=200
set autoindent
set noswapfile
set nobackup
set undofile
set expandtab
set nowrap
set incsearch
set undodir=~/.vim/undodir
set encoding=utf-8
set backspace=indent,eol,start
set bg=dark
set background=dark
set path+=**
set tags+=**
set tags+=%:p:h
set guifont=Liberation\ Mono\ for\ Powerline\ 12
"}
"lets 
"{

let g:gruvbox_italic=1
let g:closetag_shortcut = '>'
let g:coc_snippet_next = '<tab>'
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ }
let g:closetag_emptyTags_caseSensitive = 1
let g:closetag_xhtml_filetypes = 'xhtml,jsx, tsx, md'
let g:closetag_filenames = '*.html,*.xhtml,*.phtml, *.jsx, *.tsx, *.md'
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx, *.tsx, *.md'
let g:closetag_filetypes = 'html,xhtml,phtml,tsx, jsx, md'
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-eslint', 
  \ 'coc-prettier', 
  \ 'coc-clangd',
  \ 'coc-json', 
  \ 'coc-omnisharp',
  \ 'coc-python',
  \ 'coc-java',
  \ 'coc-texlab',
  \ 'coc-explorer',
  \ 'coc-lua'
  \ ]
let g:material_terminal_italics = 1
let g:material_theme_style = 'default'
let g:mapleader=" "
let g:vimspector_enable_mappings = 'HUMAN'
let g:gruvbox_contrast_hard=1
let g:airline#extensions#tabline#enabled = 1
let g:Powerline_symbols = 'fancy'
let g:airline_powerline_fonts = 1
let g:molokai_original = 1
let maplocalleader='\'
let ayucolor = "mirage"
let g:indentLine_char = '>>'
let g:indentLine_first_char = '>>'
"}


"mappings
"{
filetype plugin on
highlight ColorColumn ctermbg=0 guibg=lightgrey
noremap <A-K> "add"ap
noremap <A-J> "add"ap
imap <c-bs> <C-w>
noremap <C-c> "+y
nmap <Silent><Leader>e :CocCommand explorer<CR>
nmap <silent><Leader>co :Colors<CR>
nmap <Leader>t :NERDTree %<CR>
nmap <Leader>I :e! ~/init.vim<CR>
nmap <Leader><UP> zc
nmap <Leader><DOWN> zo
nmap <S><S> :Files!<CR>
nmap <Leader>T :tabedit 
nmap <silent><Leader>bo :Buffers!<CR>
nmap <silent><Leader>ro :Rg!<CR>
nmap <Leader>cs cstt
nmap <Leader>ds dst
imap <localleader><localleader> <Esc>
nmap <Leader>; <C-w><C-l>
nmap <C-t> :tabedit<CR>
nmap <Leader>l <C-w><C-k>
nmap <Leader>k <C-w><C-j>
nmap <Leader>j <C-w><C-h>
nmap <Leader>_d "_d
nmap <C-p> :Files<CR>
imap <A-?> <C-u>
nmap <Leader>hs :sp<CR>
nmap <Leader>us :vsp<CR>
nmap <silent><Leader>n :noh<CR>
nmap <Leader>m :MaximizerToggle<CR>
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gr <Plug>(coc-references)
nmap <Leader>dd :call vimspector#Launch()<CR>
nmap <Leader>dl <Plug>VimspectorStepInto
nmap <Leader>dj <Plug>VimspectorStepOver
nmap <Leader>dk <Plug>VimspectorStepOut
nmap <Leader>fs :w<CR>
nmap <Leader>sr :w 
nmap <Leader>d_ <Plug>VimspectorRestart
nmap <Leader>drc <Plug>VimspectorRunToCursor
nmap <Leader>ro :RnvimrToggle<CR>
nmap <Leader>rn <Plug>(coc-rename)
nmap <Leader>ff :CocCommand prettier.formatFile<CR>
nmap <Leader>prw :CocSearch <C-R>=expand("<cword>")<CR><CR>
nmap <Leader>rnu :set rnu<CR>
nmap <Leader>nu :set nornu<CR>
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
nmap <Leader>gf :GodotRunFZF<CR>
nmap <Leader>g :GodotRun<CR>
nmap <Tab> gt
nmap <C-_> gcc
vmap <C-_>   gc
imap <C-_> <ESC>gcci
imap <C-H> <C-w>
nmap <C-j> ddp
nmap <C-k> ddkP
nmap <C-H> "+diw 
nmap <Leader>pf :
vmap <C-j> djp
vmap <Leader>' s'
nmap <Leader>' ysiw'
vmap <Leader>" s"
nmap <Leader>" ysiw"
nmap <Leader>w :vsp<CR>
nmap <Leader>hw :sp<CR>
nmap <silent><Leader>fo :Files<CR>
nmap ga :normal ggVG<CR>
nmap <silent><Leader>sp :CocSearch <C-R>=expand("<cword>")<CR><CR>
nmap <silent><Leader>to <Plug>(coc-terminal-toggle)
nnoremap Q <ESC>
"}
"autocmds
"{

autocmd FileType cs setlocal commentstring=//%s
autocmd FileType markdown set wrap
autocmd BufWritePre jsx CocCommand prettier.formatFile
autocmd BufWritePre javascript CocCommand prettier.formatFile
autocmd BufWritePre typescript CocCommand prettier.formatFile
autocmd BufWritePre tsx CocCommand prettier.formatFile
autocmd FileType markdown set spell spelllang=en_us
autocmd FileType tex set spell spelllang=en_us
autocmd BufWinEnter * :normal 100zr
"}

"Lua
"{
lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  highlight = {
    enable = true,              -- false will disable the whole extension
    disable = { "gdscript", "gd" },  -- list of language that will be disabled
  },
}
EOF
"}
" commands
" {
command! Init :e! ~/init.vim
" }
"plugins
"{
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'calviken/vim-gdscript3'
Plug 'ayu-theme/ayu-vim'
Plug 'rakr/vim-one'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'preservim/nerdtree'
Plug 'tjdevries/gruvbuddy.nvim'
Plug 'tjdevries/colorbuddy.vim'
Plug 'liuchengxu/space-vim-dark'
Plug 'ryanoasis/vim-devicons'
Plug 'sickill/vim-monokai'
Plug 'dunstontc/vim-vscode-theme'
Plug 'dracula/vim'
Plug 'gosukiwi/vim-atom-dark'
Plug 'epilande/vim-react-snippets'
Plug 'arcticicestudio/nord-vim'
Plug 'liuchengxu/vim-which-key'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'sainnhe/gruvbox-material'
Plug 'junegunn/fzf.vim'
Plug 'vim-latex/vim-latex'
Plug 'epilande/vim-es2015-snippets'
Plug 'goballooning/vim-live-latex-preview'
Plug 'tomasiser/vim-code-dark'
Plug 'vim-airline/vim-airline-themes'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'tomasr/molokai'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'CaffeineViking/vim-glsl'
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'joshdick/onedark.vim'
Plug 'vim-airline/vim-airline'
Plug 'mg979/vim-visual-multi'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'alvan/vim-closetag'
Plug 'yuezk/vim-js'
Plug 'OmniSharp/omnisharp-vim'
Plug 'mbbill/undotree'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'airblade/vim-gitgutter'
Plug 'christoomey/vim-tmux-navigator'
Plug 'morhetz/gruvbox'
Plug 'ThePrimeagen/vim-be-good'
Plug 'habamax/vim-godot'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'szw/vim-maximizer'
Plug 'honza/vim-snippets'
Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
call plug#end()
"}
"misc (meaning don't comment out anything you stupid nut)
inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" lua require('colorbuddy').colorscheme('gruvbuddy')
colorscheme gruvbox-material

" lightline
if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
" This is the closetag config
" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
"
" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
"
" dict
" Disables auto-close if not in a "valid" region (based on filetype)
"


" Shortcut for closing tags, default is '>'
"

" Add > at current position without closing the current tag, default is ''
"
if (has("termguicolors"))
  set termguicolors

endif
let g:palenight_terminal_italics=1
let g:NERDTreeDirArrows=0
let NERDTreeShowHidden=1
let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -l -g ""'

"#292d3e is the background color set it in your terminal emulator
" hi Normal guibg=none ctermbg=NONE
hi Comment cterm=italic
