
" shortcut mappings
noremap ,ev :e ~/.vimrc<CR>
noremap ,e :source ~/.vimrc<CR>:echo 'read vimrc!'<CR>
noremap ,re :source ~/.vimrc<CR>:echo 'reload .vimrc!!'<CR>

nmap <silent> <F8> :bp<CR>
nmap <silent> <F9> :bn<CR>

noremap <Tab> gt
noremap <S-Tab> gT

" ESCのショートカットはC-cまたはC-[

" Command-line window 
nnoremap <sid>(command-line-enter) q:
xnoremap <sid>(command-line-enter) q:
nnoremap <sid>(command-line-norange) q:<C-u>

nmap :  <sid>(command-line-enter)
xmap :  <sid>(command-line-enter)

autocmd MktkmrAutoCmd CmdwinEnter * call s:init_cmdwin()
function! s:init_cmdwin()
  nnoremap <buffer> q :<C-u>quit<CR>
  nnoremap <buffer> <TAB> :<C-u>quit<CR>
  inoremap <buffer><expr><CR> pumvisible() ? "\<C-y>\<CR>" : "\<CR>"
  inoremap <buffer><expr><C-h> pumvisible() ? "\<C-y>\<C-h>" : "\<C-h>"
  inoremap <buffer><expr><BS> pumvisible() ? "\<C-y>\<C-h>" : "\<C-h>"

  " Completion.
  inoremap <buffer><expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

  startinsert!
endfunction
