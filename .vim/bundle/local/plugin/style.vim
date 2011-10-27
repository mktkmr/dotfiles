
colorscheme torte
"colorscheme calmar256-dark

" カレントラインに下線を表示する
set cursorline

" タブやスペースを可視化する
set list listchars=eol:$,tab:^\ ,trail:_,

" 行番号を表示する
set nocompatible
set number

" コマンドラインで補完候補を表示する
set wildmenu
set wildmode=full

" カーソル行の上下に表示する行数を増やす
set scrolloff=10

" マウスモードを有効にする
set mouse=a

" screen対応
set ttymouse=xterm2

" ステータスラインを表示するウィンドウを設定する。
" 0: 一番下のウィンドウはステータスラインを表示しない
" 1: ウィンドウが1つの時はステータスラインを表示しない。 2つ以上ある場合は、ステータスラインを表示する
" 2: 常にステータスラインを表示する
set laststatus=2
