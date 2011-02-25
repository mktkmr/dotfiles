" my-unite.vim
" setting

" uniteのウィンドウを生成する際、画面分割の位置ルールを指定する
let g:unite_split_rule  = 'botright'

" 起動時にインサートモードで開始
" let g:unite_enable_start_insert = 1

" map

" The prefix key.
nnoremap [unite] <Nop>
nmap ,. [unite]

" 全部乗せる
" file_rec
" 入力された絞り込みテキストのディレクトリまたは、現在ディレクトリ直下のファイルすべてを候補とする。
" ディレクトリや隠しファイルは候補から除外される。候補が多すぎる場合はフリーズするかもしれない。
nnoremap <silent> [unite]u :<C-u>Unite -buffer-name=files_rec buffer bookmark file file_rec -default-action=tabopen<CR>

" カレント全部乗せ
" UniteWithBufferDir  初期の絞込みテキストが現在のバッファのディレクトリである他はUniteと同じ
nnoremap <silent> [unite]c :<C-u>UniteWithBufferDir -buffer-name=files -prompt=buffer_dir> buffer bookmark file<CR>

" バッファ
nnoremap <silent> [unite]b :<C-u>Unite -buffer-name=files -prompt=buffer> buffer<CR>

" UniteResume 以前開いたバッファを利用する
nnoremap <silent> [unite]r :<C-u>UniteResume files_rec<CR>

nnoremap <silent> [unite]o :<C-u>Unite outline<CR>
nnoremap <silent> [unite]m :<C-u>Unite mark<CR>
nnoremap <silent> [unite]hc :<C-u>Unite history/command<CR>
nnoremap <silent> [unite]hs :<C-u>Unite history/search<CR>

nnoremap <silent> [unite]vst :<C-u>Unite svn/status<CR>
nnoremap <silent> [unite]vdi :<C-u>Unite svn/diff<CR>
nnoremap <silent> [unite]vbl :<C-u>Unite svn/blame:<C-r>%<CR>

nnoremap  [unite]f  :<C-u>Unite source<CR>

autocmd FileType unite call s:unite_my_settings()
function! s:unite_my_settings()"{{{
  " Overwrite settings.

    nmap <buffer> <ESC>   <Plug>(unite_exit)
    imap <buffer> jj      <Plug>(unite_insert_leave)
    imap <buffer> <C-w>   <Plug>(unite_delete_backward_path)

    " Start insert.
"    let g:unite_enable_start_insert = 1
endfunction"}}}
