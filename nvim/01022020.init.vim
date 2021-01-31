syntax on
filetype plugin indent on

set guicursor=
set nohlsearch
set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=8
set noshowmode
set completeopt=menuone,noinsert,noselect
set signcolumn=yes

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=50

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

set colorcolumn=150
highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.vim/plugged')
"wakatime
Plug 'wakatime/vim-wakatime'
Plug 'w0rp/ale'

" Neovim lsp Plugins
Plug 'neovim/nvim-lspconfig'
Plug 'tjdevries/lsp_extensions.nvim'
Plug 'pangloss/vim-javascript'
Plug 'adelarsq/vim-matchit'
Plug 'fatih/vim-go', {'do' : ':GoUpdateBinaries' }

Plug 'yuki-ycino/fzf-preview.vim', { 'branch': 'release', 'do': ':UpdateRemotePlugins' }

Plug 'rust-lang/rust.vim'
Plug 'tweekmonster/gofmt.vim'
Plug 'tpope/vim-fugitive'
Plug 'vim-utils/vim-man'
Plug 'mbbill/undotree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'stsewd/fzf-checkout.vim'
Plug 'vuciv/vim-bujo'
Plug 'tpope/vim-dispatch'
Plug '/home/mpaulson/personal/vim-apm'
Plug 'theprimeagen/vim-be-good'
Plug 'gruvbox-community/gruvbox'
Plug 'dracula/vim', { 'as': 'dracula' }

Plug 'colepeters/spacemacs-theme.vim'
Plug 'sainnhe/gruvbox-material'
Plug 'phanviet/vim-monokai-pro'
Plug 'flazz/vim-colorschemes'
Plug 'chriskempson/base16-vim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdcommenter'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'branch': 'release/0.x'
  \ }
call plug#end()

let g:gruvbox_invert_selection='0'
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1

let g:coc_global_extensions = ['coc-json', 'coc-git', 'coc-eslint', 'coc-cord']

" telescope
let g:telescope_cache_results = 1
let g:telescope_prime_fuzzy_find  = 1
let g:javascript_plugin_jsdoc = 1

" --- vim go (polyglot) settings.
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_format_strings = 1
let g:go_highlight_variable_declarations = 1
let g:go_auto_sameids = 1

let g:vim_be_good_log_file = 1
let g:vim_apm_log = 1

let g:dracula_colorterm = 0

" ale js eslint
let g:ale_fixers = {
\  'javascript': ['eslint'],
\}
let g:ale_fix_on_save = 1


colorscheme dracula
set termguicolors

if executable('rg')
    let g:rg_derive_root='true'
endif

let loaded_matchparen = 1
let mapleader = " "

let g:netrw_browse_split = 2
let g:netrw_banner = 0
let g:netrw_winsize = 25
let g:netrw_localrmdir='rm -r'

let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8 } }
let $FZF_DEFAULT_OPTS='--reverse'
let g:fzf_branch_actions = {
      \ 'rebase': {
      \   'prompt': 'Rebase> ',
      \   'execute': 'echo system("{git} rebase {branch}")',
      \   'multiple': v:false,
      \   'keymap': 'ctrl-r',
      \   'required': ['branch'],
      \   'confirm': v:false,
      \ },
      \ 'track': {
      \   'prompt': 'Track> ',
      \   'execute': 'echo system("{git} checkout --track {branch}")',
      \   'multiple': v:false,
      \   'keymap': 'ctrl-t',
      \   'required': ['branch'],
      \   'confirm': v:false,
      \ },
      \}


nnoremap <leader>gc :GBranches<CR>
nnoremap <leader>ga :Git fetch --all<CR>
nnoremap <leader>grum :Git rebase upstream/master<CR>
nnoremap <leader>grom :Git rebase origin/master<CR>
nnoremap <leader>ghw :h <C-R>=expand("<cword>")<CR><CR>
nnoremap <leader>prw :CocSearch <C-R>=expand("<cword>")<CR><CR>
nnoremap <leader>bs /<C-R>=escape(expand("<cWORD>"), "/")<CR><CR>
nnoremap <silent> <C-o> :Files<CR>
nnoremap <silent> <C-p> :GFiles<CR>
nnoremap <silent> <C-l> :Buffers<CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <Leader><CR> :so ~/.config/nvim/init.vim<CR>
nnoremap <Leader>+ :vertical resize +5<CR>
nnoremap <Leader>- :vertical resize -5<CR>
nnoremap <Leader>rp :vertical resize 225<CR>
nnoremap <Leader>ro :vertical resize 175<CR>
nnoremap <Leader>ri :vertical resize 125<CR>
nnoremap <Leader>ru :vertical resize 75<CR>
nnoremap <Leader>ee oif err != nil {<CR>log.Fatalf("%+v\n", err)<CR>}<CR><esc>kkI<esc>
nnoremap <Leader>rt :RainbowToggle<CR>
nnoremap <Leader>rl :RainbowLoad<CR>
nnoremap <Leader>ct :CocList extensions<CR>
nnoremap <Leader>ck :GoCoverageClear<CR>
                 

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" greatest remap ever
vnoremap <leader>p "_dP

" vim TODO
nmap <Leader>tu <Plug>BujoChecknormal
nmap <Leader>th <Plug>BujoAddnormal
let g:bujo#todo_file_path = $HOME . "/.cache/bujo"

" Command shortcut
nnoremap <Leader>ww ofunction wait(ms: number): Promise<void> {<CR>return new Promise(res => setTimeout(res, ms));<CR>}<esc>k=i{<CR>
nnoremap <Leader>cl oconsole.log()<esc>i

" Vim with me
nnoremap <leader>vwm :colorscheme gruvbox<bar>:set background=dark<CR>
nnoremap <leader>vnt :colorscheme dracula<bar>:set background=dark<CR>
nmap <leader>vtm :highlight Pmenu ctermbg=gray guibg=gray

" go config for vim
autocmd BufWritePre *.go :call CocAction('runCommand', 'editor.action.organizeImport')
autocmd FileType go nmap gtj :CocCommand go.tags.add json<cr>
autocmd FileType go nmap gty :CocCommand go.tags.add yaml<cr>
autocmd FileType go nmap gtx :CocCommand go.tags.clear<cr>

" copy to clipboard
vmap <C-c> "+y 
inoremap <C-c> <esc>

let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']

nmap <leader>gh :diffget //3<CR>
nmap <leader>gu :diffget //2<CR>
nmap <leader>gs :G<CR>

fun! EmptyRegisters()
    let regs=split('abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789/-"', '\zs')
    for r in regs
        call setreg(r, [])
    endfor
endfun

fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

" ES
com! W w


fun! GotoBuffer(ctrlId)
    if (a:ctrlId > 9) || (a:ctrlId < 0)
        echo "CtrlID must be between 0 - 9"
        return
    end

    let contents = g:win_ctrl_buf_list[a:ctrlId]
    if type(l:contents) != v:t_list
        echo "Nothing There"
        return
    end

    let bufh = l:contents[1]
    call nvim_win_set_buf(0, l:bufh)
endfun

" How to do this but much better?
let g:win_ctrl_buf_list = [0, 0, 0, 0]
fun! SetBuffer(ctrlId)
    if has_key(b:, "terminal_job_id") == 0
        echo "You must be in a terminal to execute this command"
        return
    end
    if (a:ctrlId > 9) || (a:ctrlId < 0)
        echo "CtrlID must be between 0 - 9"
        return
    end

    let g:win_ctrl_buf_list[a:ctrlId] = [b:terminal_job_id, nvim_win_get_buf(0)]
endfun

fun! SendTerminalCommand(ctrlId, command)
    if (a:ctrlId > 9) || (a:ctrlId < 0)
        echo "CtrlID must be between 0 - 9"
        return
    end
    let contents = g:win_ctrl_buf_list[a:ctrlId]
    if type(l:contents) != v:t_list
        echo "Nothing There"
        return
    end

    let job_id = l:contents[0]
    call chansend(l:job_id, a:command)
endfun

com! SetLspVirtualText call ThePrimeagen_LspHighlighter()
