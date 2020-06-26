set number
set mouse=a
set cursorline
set commentstring=//\ %s
colorscheme monokai

nnoremap <Leader>a :A<cr>

let g:ycm_path_to_python_interpreter="/usr/bin/python3"
let g:ycm_clangd_binary_path="clangd"

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

nnoremap <leader>vj :vsplit \| YcmCompleter GoTo<cr>
nnoremap <leader>sj :split \| YcmCompleter GoTo<cr>
nnoremap <leader>tj :tab split \| YcmCompleter GoTo<cr>
nnoremap <leader>j :YcmCompleter GoTo<cr>
nnoremap <leader>jt :YcmCompleter GetType<CR>
nnoremap <leader>jf :YcmCompleter FixIt<CR>
nnoremap <Leader>jd :YcmDiags<cr>


