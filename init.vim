noremap <C-J> "add"ap
noremap <C-K> "addkk"ap
imap <c-bs> <C-w> 
set nu
set tabstop=8 softtabstop=0 expandtab shiftwidth=4
set rnu
set noerrorbells
set mouse=a
set autoindent
set noswapfile
set nobackup
set undofile
set nowrap
set incsearch
set undodir=~/.vim/undodir
set backspace=indent,eol,start
set colorcolumn=80
set background=dark
set path+=**
set tags+=**
set tags+=%:p:h
highlight ColorColumn ctermbg=0 guibg=lightgrey
noremap <A-K> "add"ap
noremap <A-J> "add"ap
imap <c-bs> <C-w>
noremap <C-c> "+y
"Random line
let g:mapleader=" "
nmap <Leader>t :NERDTree %<CR>
nmap <Leader>cs cstt
nmap <Leader>ds dst
nmap <Leader>; <C-w><C-l>
nmap <Leader>l <C-w><C-k>
nmap <Leader>k <C-w><C-j>
nmap <Leader>j <C-w><C-h>
nmap <Leader>c :Colors<CR>
nmap <Leader>_d "_dd
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
nmap <Leader>rnu :set rnu
nmap <Leader>nu :set nornu
nmap <Leader>gf :GodotRunFZF<CR>
nmap <Leader>g :GodotRun<CR>
let g:vimspector_enable_mappings = 'HUMAN'
let g:rnvimr_ex_enable = 1
nmap <Leader>~ <Plug>(coc-terminal-toggle)
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-surround'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'alvan/vim-closetag'
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
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
Plug 'ThePrimeagen/vim-be-good'
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
" This is the closetag config
" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.

let g:closetag_filenames = '*.html,*.xhtml,*.phtml, *.jsx'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
"
let g:closetag_filetypes = 'html,xhtml,phtml'

" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filetypes = 'xhtml,jsx'

" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
"
let g:closetag_emptyTags_caseSensitive = 1

" dict
" Disables auto-close if not in a "valid" region (based on filetype)
"
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ }

" Shortcut for closing tags, default is '>'
"
let g:closetag_shortcut = '>'

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
highlight Normal guibg=none
