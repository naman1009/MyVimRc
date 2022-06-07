syntax on
set nofoldenable
set showtabline=2
set spelllang=en_us
set guifont=Courier\ New:h14
set background=dark
set nocompatible
filetype plugin on
augroup pencil
  autocmd!
  autocmd FileType markdown,mkd call pencil#init()
  autocmd FileType markdown,mkd set spell
  autocmd FileType markdown,mkd syn match myExCapitalWords +\<[A-Z]\w*\>+ contains=@NoSpell
augroup END
set tabstop=4
set shiftwidth=4
set smartindent
set mouse=a
set rnu
set nu
set nowrap
set nohlsearch
set noerrorbells
set termguicolors
set hidden
set incsearch
set smartcase
set ignorecase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set scrolloff=8
set encoding=UTF-8
" lets
let mapleader = " "
let g:dashboard_default_executive ='telescope'
let g:ale_disable_lsp = 1

function TransparentBg()
	hi Normal guibg=none ctermbg=none
	hi NonTex guibg=none ctermbg=none
	hi SignColumn guibg=none ctermbg=none
	hi EndofBuffer guibg=none ctermbg=NONE
endfunction

command Bg call TransparentBg()

autocmd VimLeave * call system("xsel -ib", getreg('+'))
autocmd TermOpen * setlocal nonumber norelativenumber



" Mappings

map <F5> :!pandoc % -o %:t:r.pdf<cr>
imap <F2> <w:p><w:r><w:br w:type=\"page\"/></w:r></w:p>
nmap <leader>tg :TagbarToggle<CR>
nmap <leader>oo :CocOutline<CR>


nmap ep i\newpage

nmap <C-space> <cmd>CocCommand terminal.Toggle<CR>

let s:fontsize = 12

function! AdjustFontSize(amount)
  let s:fontsize = s:fontsize+a:amount
  set guifont="Courier\ New:h" . s:fontsize
endfunction

noremap <C-ScrollWheelUp> :call AdjustFontSize(1)<CR>
noremap <C-ScrollWheelDown> :call AdjustFontSize(-1)<CR>
inoremap <C-ScrollWheelUp> <Esc>:call AdjustFontSize(1)<CR>a
inoremap <C-ScrollWheelDown> <Esc>:call AdjustFontSize(-1)<CR>a



tmap <C-e> <C-\><C-n>
inoremap <C-h> <C-w>
inoremap <C-BS> <C-w>
nnoremap H ^
nnoremap L $
vnoremap H ^
vnoremap L $
imap ~~ <C-[>
nmap rp "+p
nmap <silent>gd <Plug>(coc-definition)
au FileType cpp nmap <silent>gi <Plug>(coc-implementation)<CR>
nmap <leader>rn <Plug>(coc-rename)
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
nmap <silent> gD <Plug>(coc-declaration)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nnoremap <leader>io :CocCommand java.action.organizeImports
nnoremap K :call CocActionAsync('doHover')<cr>
nmap Y "+yy
vmap Y "+y
nnoremap <C-x><C-f> <cmd>Telescope find_files theme=ivy hidden=true<cr>
inoremap <C-x><C-f> <cmd>Telescope find_files theme=ivy<cr>
nmap <leader>oh <cmd>Telescope help_tags theme=ivy<CR>
imap <M-x> <cmd>Telescope commands theme=ivy<CR>
nmap <M-x> <cmd>Telescope commands theme=ivy<CR>
nnoremap  <C-s> <cmd>Telescope live_grep theme=ivy<cr>
nnoremap <C-x>b <cmd>Telescope buffers theme=ivy<cr>
inoremap <C-x>b <cmd>Telescope buffers theme=ivy<cr>
nnoremap <leader>oc <cmd>Telescope colorscheme theme=ivy<cr>
vmap <C-_> gc
nnoremap <leader> fw z=
nnoremap <leader>ot :NvimTreeToggle<cr>
nmap <C-_> gcc
nmap <leader>st <cmd>FloatermToggle<CR>
nmap <C-j> ddp
nmap <leader>or :RnvimrToggle<CR>
nmap <C-k> ddkP
vmap <c-k> dkPv
vmap <c-j> dpv
inoremap <silent><expr> <C-l>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'
imap <C-n> <Plug>(coc-snippets-next)
nmap dr da{dd
nnoremap TQ :Bdelete!<CR>
nmap <leader><TAB> <cmd>BufferLineCycleNext<CR>
nmap <leader><S-TAB> <cmd>BufferLineCyclePrev<CR>
map <silent> w <Plug>CamelCaseMotion_w
map <silent> b <Plug>CamelCaseMotion_b
map <silent> e <Plug>CamelCaseMotion_e
map <silent> ge <Plug>CamelCaseMotion_ge
sunmap w
sunmap b
sunmap e
sunmap ge
omap <silent> iw <Plug>CamelCaseMotion_iw
xmap <silent> iw <Plug>CamelCaseMotion_iw
omap <silent> ib <Plug>CamelCaseMotion_ib
xmap <silent> ib <Plug>CamelCaseMotion_ib
omap <silent> ie <Plug>CamelCaseMotion_ie
xmap <silent> ie <Plug>CamelCaseMotion_ie



let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_material_palette='original'
let g:gruvbox_material_background='hard'


" something
" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<c-n>"
" let g:UltiSnipsJumpBackwardTrigger="<c-p>"

let g:camelcasemotion_key = '<leader>'

let g:material_theme_style = 'palenight'

command Init :e! ~/.config/nvim/init.vim
command Eval :so ~/init.vim


if has('unix')
    set dictionary+=/usr/share/dict/words
else
    set dictionary+=~/AppData/Local/nvim/words
endif



call plug#begin()
" colorschemes
Plug 'dracula/vim'
Plug 'github/copilot.vim'
Plug 'thedenisnikulin/vim-cyberpunk'
Plug 'Mofiqul/vscode.nvim'
Plug 'habamax/vim-godot'
Plug 'doums/darcula'
Plug 'joshdick/onedark.vim'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'vim-airline/vim-airline-themes'
Plug 'flazz/vim-colorschemes'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'sainnhe/gruvbox-material'
Plug 'arcticicestudio/nord-vim'
Plug 'sickill/vim-monokai'
Plug 'kaicataldo/material.vim'
Plug 'gruvbox-community/gruvbox'
Plug 'tomasiser/vim-code-dark'
Plug 'romgrk/doom-one.vim'
" Plugins

Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
Plug 'cwfoo/vim-text-omnicomplete', { 'do': 'make' }
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'cdelledonne/vim-cmake'
Plug 'kevinhwang91/rnvimr'
Plug 'moll/vim-bbye'
Plug 'akinsho/bufferline.nvim'
Plug 'farconics/victionary'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'kyazdani42/nvim-web-devicons' " Recommended (for coloured icons)
Plug 'voldikss/vim-floaterm'
Plug 'glepnir/dashboard-nvim'
Plug 'preservim/tagbar'
Plug 'dense-analysis/ale'
Plug 'mlaursen/vim-react-snippets'
Plug 'honza/vim-snippets'
Plug 'OmniSharp/omnisharp-vim'
Plug 'bkad/CamelCaseMotion'
Plug 'preservim/vim-markdown'
Plug 'nvim-orgmode/orgmode'
Plug 'alvan/vim-closetag'
Plug 'vim-airline/vim-airline'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-surround'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'preservim/vim-pencil'
Plug 'junegunn/goyo.vim'
Plug 'tpope/vim-commentary'
call plug#end()

" Tree-sitter config

lua << EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "lua", "rust", "cpp", "java", "javascript", "typescript" },
  sync_install = false,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
EOF
let g:closetag_filenames = '*.html,*.xhtml,*.phtml, *.js, *.jsx, *.ts, *.tsx'
au FileType cs nmap <silent>gd  :OmniSharpGotoDefinition<CR>
set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()

color gruvbox-material

lua require'colorizer'.setup()
au FileType * ColorizerAttachToBuffer

lua << EOF
require'nvim-tree'.setup()
require("bufferline").setup{
	options ={
		offsets = { {filetype="NvimTree", text="", padding=0.1}}
	}
}
require('telescope').load_extension('fzy_native')
EOF

autocmd BufEnter * ++nested if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif

:Bg
