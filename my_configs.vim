set number
set relativenumber
set mouse=a
set cursorline
set commentstring=//\ %s

set expandtab
set tabstop=4

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

set list
set listchars=tab:>-

set path+=**
set makeprg=bash\ bd

let g:lightline = {'colorscheme': 'PaperColor'}
if !has('g:lightline.component')
    let g:lightline.component={}
endif
let g:lightline.component.filename='%F'
" set noshowmode

colorscheme gruvbox
set colorcolumn=120

nnoremap <Leader>c :close<cr>

nnoremap <Leader>a :A<cr>
nnoremap <Leader>as :AS<cr>
nnoremap <Leader>av :AV<cr>
nnoremap <Leader>at :AT<cr>

cnoreabbrev Ack Ack!
nnoremap <Leader>ga :AckAdd
nnoremap <Leader>gl :LAck
nnoremap <Leader>gla :LAckAdd

nnoremap <Leader>dg :diffget<cr>
nnoremap <Leader>dp :diffput<cr>

let g:ctrlp_max_files=0
let g:ctrlp_custom_ignore='node_modules\|DS_Store\|build'

" ALE settings:
let g:ale_c_build_dir_names=['build', 'bin', '.']
let g:ale_cpp_clang_options = '-std=c++20 -Wall'
let g:ale_cpp_clangd_executable='clangd'
let g:ale_cpp_clangd_options='-j=2 --pch-storage=memory'

let g:ale_cpp_gcc_options='-std=c++20 -Wall'

let g:ale_lint_on_text_changed='never'
let g:ale_lint_on_insert_leave=0
let g:ale_lint_on_enter=0
let g:ale_lint_delay=1000
let g:ale_c_parse_compile_commands=1

if isdirectory(expand('~/.fzf'))
    set rtp+=~/.fzf
    nnoremap <Leader>f :FZF<cr>
endif

if filereadable(expand("~/.vim/bundle/YouCompleteMe/autoload/youcompleteme.vim"))
    let g:ycm_autoclose_preview_window_after_completion=1
    let g:ycm_autoclose_preview_window_after_insertion=1
    let g:ycm_auto_hover=''
    let g:ycm_show_diagnostics_ui=0
    let g:ycm_path_to_python_interpreter="python3"
    let g:ycm_clangd_binary_path="/opt/bats/bin/clangd"
    let g:ycm_use_clangd=1
    let g:ycm_clangd_args=['-j=1', '-pretty', '--pch-storage=memory', '--background-index', '--all-scopes-completion', '--completion-style=detailed']
    let g:ycm_clangd_uses_ycmd_caching=1
    let g:ycm_confirm_extra_conf=0

    let g:ycm_keep_logfiles=0
    let g:ycm_log_level='warning'

    let g:ycm_filetype_blacklist = {
          \ 'tagbar': 1,
          \ 'notes': 1,
          \ 'markdown': 1,
          \ 'netrw': 1,
          \ 'unite': 1,
          \ 'text': 1,
          \ 'vimwiki': 1,
          \ 'pandoc': 1,
          \ 'infolog': 1,
          \ 'leaderf': 1,
          \ 'mail': 1,
          \ 'vim': 1,
          \ 'ctrlp': 1
          \}

    set rtp+=~/.vim/bundle/YouCompleteMe
    source ~/.vim/bundle/YouCompleteMe/autoload/youcompleteme.vim

    set completeopt-=preview

    nnoremap <leader>vj :vsplit \| YcmCompleter GoTo<cr>
    nnoremap <leader>sj :split \| YcmCompleter GoTo<cr>
    nnoremap <leader>tj :tab split \| YcmCompleter GoTo<cr>
    nnoremap <leader>j :YcmCompleter GoTo<cr>
    nnoremap <leader>jt :YcmCompleter GetType<CR>
    nnoremap <leader>jf :YcmCompleter FixIt<CR>
    nnoremap <Leader>jc :YcmCompleter GoToCallers<cr>
    nnoremap <Leader>jd :YcmDiags<cr>
endif

let $TMPDIR='/var/tmp/'
let maplocalleader='\\'

let g:GIT_LENS_ENABLED=1

let g:vimspector_enable_mappings='HUMAN'

nnoremap <Leader>st :VimspectorReset<cr>
nnoremap <Leader>4 <Plug>VimspectorRestart
" nmap <LocalLeader>- <Plug>VimspectorUpFrame
nmap <Leader>- <Plug>VimspectorUpFrame
" nmap <LocalLeader>= <Plug>VimspectorDownFrame
nmap <Leader>= <Plug>VimspectorDownFrame
nmap <Leader>i <Plug>VimspectorBalloonEval
xmap <Leader>i <Plug>VimspectorBalloonEval
nmap <Leader>bb <Plug>VimspectorBreakpoints

let g:asyncrun_open = 12
nmap <Leader>b :AsyncRun ~/.local/bin/bd<cr>
nnoremap <leader>v :call asyncrun#quickfix_toggle(12)<CR>

let g:NERDTreeWinSize=50
" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif

autocmd BufWritePre * :%s/\s\+$//e

au BufRead,BufNewFile *.inc  set filetype=cpp
au BufRead,BufNewFile *.sqli set filetype=sql

imap <C-h> <C-o>h
imap <C-j> <C-o>j
imap <C-k> <C-o>k
imap <C-l> <C-o>l
