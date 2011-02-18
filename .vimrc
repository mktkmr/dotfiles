"pathogenでftdetectなどをロードさせるために一度ファイルタイプ判定をoffにする
filetype off

"pathogen.vimを使ってbundle配下のプラグインをpathに加える
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
set helpfile=$VIMRUNTIME/doc/help.txt

