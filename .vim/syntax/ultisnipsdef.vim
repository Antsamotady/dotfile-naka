" " _   _           _       _       _ _             _             
" "| | | | __ _ ___(_)_ __ | |_ ___(_) | __ ___   _(_)_ __   __ _ 
" "| |_| |/ _ \ \ / / | '_ \ / _` |
" "|  _  | (_| \__ \ | | | | |_\__ \ | | (_| |\ V /| | | | | (_| |
" "|_| |_|\__,_|___/_|_| |_|\__|___/_|_|\__,_| \_/ |_|_| |_|\__,_|
" "                                                               

syntax match snippetDef "^snippet\|^endsnippet"
hi def link snippetDef Special

sy match snippetStr "\"[a-zA-Z0-9 \-:,.?!]\+\""
hi def link snippetStr String

