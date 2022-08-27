call plug#begin('~/.config/nvim/plugs')
Plug 'mhinz/vim-startify'
Plug 'skywind3000/asyncrun.vim'
Plug 'sheerun/vim-polyglot'
Plug 'mhartington/oceanic-next'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'Yggdroot/indentLine'
Plug 'xuyuanp/nerdtree-git-plugin' 
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'majutsushi/tagbar', { 'on': 'TagbarToggle'	}
Plug 'glts/vim-magnum'
Plug 'glts/vim-radical'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'mbbill/undotree', { 'on': 'UndotreeToggle'}
Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-surround'
Plug 'christoomey/vim-tmux-navigator'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'tpope/vim-commentary'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'voldikss/vim-floaterm'
Plug 'jdhao/better-escape.vim'
Plug 'easymotion/vim-easymotion'
Plug 'haya14busa/vim-easyoperator-line'
Plug 'yuttie/comfortable-motion.vim'
Plug 'haya14busa/vim-easyoperator-phrase'
Plug 'ryanoasis/vim-devicons'
Plug 'thaerkh/vim-workspace'
Plug 'flazz/vim-colorschemes'
Plug 'jiangmiao/auto-pairs'
Plug 'wakatime/vim-wakatime'
Plug 'https://github.com/neovimhaskell/haskell-vim'
Plug 'https://github.com/alx741/vim-hindent'
Plug 'https://github.com/jpalardy/vim-slime', { 'on': 'SlimeSend' }
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'deathlyfrantic/deoplete-spell'
call plug#end()
" Mappings
let g:deoplete#enable_at_startup = 1
map , <leader>
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
let g:workspace_create_new_tabs = 0
let g:workspace_session_directory = $HOME . '/Storage/Sessions/'
let g:workspace_autosave = 0
let g:comfortable_motion_scroll_down_key = "j"
let g:comfortable_motion_scroll_up_key = "k"


let g:indentLine_char_list = ['|', '¦', '┆', '┊']

nnoremap <leader>r :source % <CR>
nmap <F8> :TagbarToggle<CR>

nmap U :redo<CR> 

nmap <leader>t :FloatermNew <CR>
nmap <leader>T :FloatermHide <CR>

tnoremap <Esc> <C-\><C-n>

nnoremap <F5> :UndotreeToggle<CR>

nmap s <Plug>(easymotion-overwin-f)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader><Leader> <Plug>(easymotion-prefix)
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif


let g:better_escape_shortcut = ['jk', 'jj', 'kj', 'лл']


let g:workspace_autocreate = 1
nnoremap <leader>s :ToggleWorkspace<CR>




let g:haskell_enable_quantification = 1   " to enable highlighting of `forall`
let g:haskell_enable_recursivedo = 1      " to enable highlighting of `mdo` and `rec`
let g:haskell_enable_arrowsyntax = 1      " to enable highlighting of `proc`
let g:haskell_enable_pattern_synonyms = 1 " to enable highlighting of `pattern`
let g:haskell_enable_typeroles = 1        " to enable highlighting of type roles
let g:haskell_enable_static_pointers = 1  " to enable highlighting of `static`
let g:haskell_backpack = 1                " to enable highlighting of backpack keywords
let g:haskell_indent_disable = 0

let g:slime_target = "tmux"
let g:slime_paste_file = "$HOME/.slime_paste"
let g:slime_default_config = {"socket_name": "default", "target_pane": "{last}"}
set termguicolors
let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1
syntax enable
colorscheme 256_noir
hi Normal guibg=NONE ctermbg=NONE
hi LineNr guibg=NONE ctermbg=NONE
hi SignColumn guibg=NONE ctermbg=NONE
hi EndOfBuffer guibg=NONE ctermbg=NONE
set dictionary+=/usr/share/dict/words
set complete+=k

