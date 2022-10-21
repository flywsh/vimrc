set number
set relativenumber
set mouse=a
set cursorline
set commentstring=//\ %s

set expandtab
set tabstop=4

set list
set listchars=tab:>-

set path+=**
set makeprg=bash\ mr.sh

colorscheme monokai
colorscheme gruvbox
set colorcolumn=80

nnoremap <Leader>a :A<cr>

nnoremap <Leader>dg :diffget<cr>
nnoremap <Leader>dp :diffput<cr>

let g:ctrlp_max_files=0
let g:ctrlp_custom_ignore='node_modules\|DS_Store\|build'

if filereadable(expand("~/.vim/bundle/YouCompleteMe/autoload/youcompleteme.vim"))
    let g:ycm_auto_hover=''
    let g:ycm_show_diagnostics_ui = 0
    let g:ycm_path_to_python_interpreter="/usr/bin/python3"
    let g:ycm_clangd_binary_path="clangd"
    let g:ycm_clangd_args=['-j=5', '-pretty']
    let g:ycm_confirm_extra_conf=0

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

let maplocalleader='\\'

let g:vimspector_enable_mappings='HUMAN'
nnoremap <Leader>st :VimspectorReset<cr>
nmap <LocalLeader>- <Plug>VimspectorUpFrame
nmap <LocalLeader>+ <Plug>VimspectorDownFrame
nmap <Leader>i <Plug>VimspectorBalloonEval
xmap <Leader>i <Plug>VimspectorBalloonEval
nmap <Leader>b <Plug>VimspectorBreakpoints

autocmd BufWritePre * :%s/\s\+$//e
