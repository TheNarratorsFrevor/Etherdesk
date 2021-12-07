
call plug#begin('~/.config/nvim/plugs')
Plug 'tpope/vim-fugitive' " github
Plug 'tpope/vim-surround' " Brackets
Plug 'morhetz/gruvbox' " Gruvbox
Plug 'scrooloose/nerdtree' " Nerd tree
Plug 'roxma/vim-window-resize-easy' " Tmux-like resize 
Plug 'majutsushi/tagbar' " Tagbar
Plug 'dense-analysis/ale' " Ide
Plug 'honza/vim-snippets' " Snippets
Plug 'kien/rainbow_parentheses.vim' " Rainbowwwss
Plug 'joshdick/onedark.vim'
Plug 'vim-airline/vim-airline' " Airline
Plug 'vim-airline/vim-airline-themes'
Plug 'edkolev/tmuxline.vim' "tmux
Plug 'xuyuanp/nerdtree-git-plugin' " Git status for tree
Plug 'preservim/nerdcommenter'
Plug 'jistr/vim-nerdtree-tabs' 
Plug 'nathanaelkane/vim-indent-guides' " indents
Plug 'ap/vim-css-color' " colors for hextags
Plug 'dag/vim-fish' " Fishscript support
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'voldikss/vim-floaterm' "Floating terminal
Plug 'mbbill/undotree' 
Plug 'jiangmiao/auto-pairs' 
Plug 'yuttie/comfortable-motion.vim'
Plug 't9md/vim-quickhl' " Highlight words
Plug 'ryanoasis/vim-devicons' " Icons for NERDtree  
Plug 'glepnir/dashboard-nvim' " Dashboard
" Use release branch (recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

if exists('+termguicolors')
  let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif


let mapleader = "," 
" Configs
" NERDTREE
" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
if has("persistent_undo")
   let target_path = expand('~/.undodir')

    " create the directory and any parent directories
    " if the location does not exist.
    if !isdirectory(target_path)
        call mkdir(target_path, "p", 0700)
    endif

    let &undodir=target_path
    set undofile
endif
let g:indent_guides_enable_on_vim_startup = 0 " disable indent guides by default
" AIRLINE
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
" undotree
let g:undotree_WindowLayout = 4 
" Coc
" use tab for completion
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction



" Dashboard
let g:dashboard_default_executive ='fzf'
let g:dashboard_custom_header=[
    \'',
    \'    ⢰⣧⣼⣯⠄⣸⣠⣶⣶⣦⣾⠄⠄⠄⠄⡀⠄⢀⣿⣿⠄⠄⠄⢸⡇⠄⠄ ',
    \'    ⣾⣿⠿⠿⠶⠿⢿⣿⣿⣿⣿⣦⣤⣄⢀⡅⢠⣾⣛⡉⠄⠄⠄⠸⢀⣿⠄ ',
    \'   ⢀⡋⣡⣴⣶⣶⡀⠄⠄⠙⢿⣿⣿⣿⣿⣿⣴⣿⣿⣿⢃⣤⣄⣀⣥⣿⣿⠄ ',
    \'   ⢸⣇⠻⣿⣿⣿⣧⣀⢀⣠⡌⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠿⠿⣿⣿⣿⠄ ',
    \'  ⢀⢸⣿⣷⣤⣤⣤⣬⣙⣛⢿⣿⣿⣿⣿⣿⣿⡿⣿⣿⡍⠄⠄⢀⣤⣄⠉⠋⣰ ',
    \'  ⣼⣖⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⣿⣿⣿⣿⣿⢇⣿⣿⡷⠶⠶⢿⣿⣿⠇⢀⣤ ',
    \' ⠘⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣽⣿⣿⣿⡇⣿⣿⣿⣿⣿⣿⣷⣶⣥⣴⣿⡗ ',
    \' ⢀⠈⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟  ',
    \' ⢸⣿⣦⣌⣛⣻⣿⣿⣧⠙⠛⠛⡭⠅⠒⠦⠭⣭⡻⣿⣿⣿⣿⣿⣿⣿⣿⡿⠃  ',
    \' ⠘⣿⣿⣿⣿⣿⣿⣿⣿⡆⠄⠄⠄⠄⠄⠄⠄⠄⠹⠈⢋⣽⣿⣿⣿⣿⣵⣾⠃  ',
    \'  ⠘⣿⣿⣿⣿⣿⣿⣿⣿⠄⣴⣿⣶⣄⠄⣴⣶⠄⢀⣾⣿⣿⣿⣿⣿⣿⠃   ',
    \'   ⠈⠻⣿⣿⣿⣿⣿⣿⡄⢻⣿⣿⣿⠄⣿⣿⡀⣾⣿⣿⣿⣿⣛⠛⠁    ',
    \'     ⠈⠛⢿⣿⣿⣿⠁⠞⢿⣿⣿⡄⢿⣿⡇⣸⣿⣿⠿⠛⠁      ',
    \'        ⠉⠻⣿⣿⣾⣦⡙⠻⣷⣾⣿⠃⠿⠋⠁     ⢀⣠⣴ ',
    \' ⣿⣿⣿⣶⣶⣮⣥⣒⠲⢮⣝⡿⣿⣿⡆⣿⡿⠃⠄⠄⠄⠄⠄⠄⠄⣠⣴⣿⣿⣿ ',
    \'',
    \]
highlight dashboardHeader ctermfg = 3e03ff
" COLORS"
colorscheme onedark
" Relative number
set relativenumber
" Keys
nmap <Space>m <Plug>(quickhl-manual-this)
xmap <Space>m <Plug>(quickhl-manual-this)

nmap <Space>w <Plug>(quickhl-manual-this-whole-word)
xmap <Space>w <Plug>(quickhl-manual-this-whole-word)

nmap <Space>c <Plug>(quickhl-manual-clear)
vmap <Space>c <Plug>(quickhl-manual-clear)

nmap <Space>M <Plug>(quickhl-manual-reset)
xmap <Space>M <Plug>(quickhl-manual-reset)

nmap <Space>] <Plug>(quickhl-tag-toggle)
map H <Plug>(operator-quickhl-manual-this-motion)
" Tab navigation like Firefox.
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
nnoremap <C-Up> :tabfirst<CR>
nnoremap <C-Down> :tablast<CR>
nnoremap <C-n> :NERDTreeTabsToggle <CR>
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <leader>f :NERDTreeTabsFind<CR>
" FKEYS
nmap <F8> :TagbarToggle<CR>
nmap <F6> :Files <CR>
nmap <F5> :GFiles <CR>
nmap <F4> :Dashboard <CR>
nmap <F3> <Plug>(quickhl-cword-toggle)
nnoremap <F2> :UndotreeToggle<CR>
nmap <F1> :FloatermNew <CR>
nmap <leader><F1> :FloatermKill <CR>
nmap <leader><F5> :Commits <CR>

nmap q :quit <CR>
nnoremap <leader>d :IndentGuidesToggle<CR>
" u can change the toggled colorschemes here
map <F11> :execute ( g:colors_name == "onedark" ? "colorscheme gruvbox" : "colorscheme onedark" ) <CR>

