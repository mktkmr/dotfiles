" init.vim

"ファイルタイプ設定をonにする
filetype on

syntax on

colorscheme torte

" コメントの行で改行すると次の行の頭にコメントを自動的に挿入してくれる機能がうざいので殺す
autocmd FileType * setlocal formatoptions-=ro

" カレントラインに下線を表示する
set cursorline

set clipboard=unnamed

" タブやスペースを可視化する
set list listchars=eol:$,tab:^\ ,trail:_,

set history=1000
set textwidth=0

" 高速ターミナル接続とやらを使わない
set nottyfast

" ファイルタイプごとに設定を変更できるモードラインを無効にする
set nomodeline

" 拡張子毎の設定ファイルで勝手に設定されるインデントを無効にする
set indentexpr=

" タブキーを押したときに4スペースで埋める
set expandtab tabstop=4 softtabstop=4 shiftwidth=4

" 改行した際に前の行のインデントを挿入する
set autoindent nosmartindent

" 検索で大文字小文字を無視
set ignorecase smartcase

" 検索語を入力しながら検索してくれるインクリメンタルサーチを使う
set wrapscan incsearch

" バックスペースキーで削除できるものを指定
" indent  : 行頭の空白
" eol     : 改行
" start   : 挿入モード開始位置より手前の文字
set backspace=indent,eol,start

" 行番号を表示する
set nocompatible
set number

" カレントディレクトリを自動で変更
" set autochdir

" バッファを切替えてもundoの効力を失わない
set hidden

" ビジュアルモードの矩形選択時に仮想編集できるようにする。
set virtualedit=block

" ペーストモードをトグルする
set pastetoggle=<C-E>

" カーソルを行頭、行末で止まらないようにする
set whichwrap=b,s,h,l,<,>,[,],~

" for Search_pm map
noremap fg :call Search_pm('vne')<ENTER>
noremap ff :call Search_pm('e')<ENTER>
noremap fd :call Search_pm('sp')<ENTER>

nmap <silent> <F7> :NERDTreeToggle<CR>
nmap <silent> <F8> :bp<CR>
nmap <silent> <F9> :bn<CR>
" ステータスラインを表示するウィンドウを設定する。
" 0: 一番下のウィンドウはステータスラインを表示しない
" 1: ウィンドウが1つの時はステータスラインを表示しない。 2つ以上ある場合は、ステータスラインを表示する
" 2: 常にステータスラインを表示する
set laststatus=2
