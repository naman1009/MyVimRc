"sets
"{
set nu
set tabstop=8 softtabstop=0 expandtab shiftwidth=4
set rnu
set noerrorbells
set mouse=a
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
set colorcolumn=80
set bg=light
set background=light
set path+=**
set tags+=**
set tags+=%:p:h
set guifont=Liberation\ Mono\ for\ Powerline\ 12
set spell spelllang=en_us
"}
"lets 
"{

let g:gruvbox_italic=1
let python_highlight_all = 1
let python_highlight_space_errors=0
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
  \ 'coc-ccls',
  \ 'coc-json', 
  \ 'coc-omnisharp',
  \ 'coc-python',
  \ 'coc-java',
  \ 'coc-texlab'
  \ ]
let g:material_terminal_italics = 1
let g:material_theme_style = 'palenight'
let g:mapleader=" "
let g:rnvimr_enable_ex = 1
let g:vimspector_enable_mappings = 'HUMAN'
let g:gruvbox_contrast_light=1
let g:airline#extensions#tabline#enabled = 1
let g:Powerline_symbols = 'fancy'
let g:airline_powerline_fonts = 1
let g:molokai_original = 1
"}

"mappings
"{
filetype plugin on
highlight ColorColumn ctermbg=0 guibg=lightgrey
noremap <A-K> "add"ap
noremap <A-J> "add"ap
imap <c-bs> <C-w>
noremap <C-c> "+y
nmap <Leader>t :NERDTree %<CR>
nmap <Leader>T :tabedit 
nmap <Leader>cs cstt
nmap <Leader>ds dst
nmap <Leader>; <C-w><C-l>
nmap <Leader>l <C-w><C-k>
nmap <Leader>k <C-w><C-j>
nmap <Leader>j <C-w><C-h>
nmap <Leader>_d "_dd
nmap <C-p> :find 
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
nmap <C-s> :w<CR>
nmap <C-w> :q!<CR>
noremap <C-q> :wq<CR>
nmap <Leader>sr :w 
nmap <Leader>d_ <Plug>VimspectorRestart
nmap <Leader>drc <Plug>VimspectorRunToCursor
nmap <Leader>r :RnvimrToggle<CR>
nmap <Leader>rn <Plug>(coc-rename)
nmap <Leader>ff :CocCommand prettier.formatFile<CR>
nmap <Leader>prw :CocSearch <C-R>=expand("<cword>")<CR><CR>
nmap <Leader>rnu :set rnu
nmap <Leader>nu :set nornu
nmap <Leader>gf :GodotRunFZF<CR>
nmap <Leader>g :GodotRun<CR>
nmap <Tab> gt
nmap <C-_> gcc
vmap <C-_>   gc
noremap <C-J> "add"ap
noremap <C-K> "addkk"ap
imap <C-H> <C-w>
vmap <Leader>' s'
nmap <Leader>' ysiw'
vmap <Leader>" s"
nmap <Leader>" ysiw"
nmap ga :normal ggVG<CR>

nmap <Leader>~ <Plug>(coc-terminal-toggle)
"}
"autocmds
"{
autocmd FileType markdown set wrap
autocmd BufWritePre jsx CocCommand prettier.formatFile
autocmd BufWritePre javascript CocCommand prettier.formatFile
autocmd BufWritePre typescript CocCommand prettier.formatFile
autocmd BufWritePre tsx CocCommand prettier.formatFile
"}

"plugins
"{
call plug#begin('~/.vim/plugged')
Plug 'dracula/vim'
Plug 'arcticicestudio/nord-vim'
Plug 'liuchengxu/vim-which-key'
Plug 'hdima/python-syntax'
Plug 'uiiaoo/java-syntax.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'vim-latex/vim-latex'
Plug 'goballooning/vim-live-latex-preview'
Plug 'tomasiser/vim-code-dark'
Plug 'vim-airline/vim-airline-themes'
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
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'airblade/vim-gitgutter'
Plug 'christoomey/vim-tmux-navigator'
Plug 'morhetz/gruvbox'
Plug 'ThePrimeagen/vim-be-good'
Plug 'habamax/vim-godot'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
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

colorscheme onedark
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
