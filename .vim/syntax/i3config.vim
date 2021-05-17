syntax match i3configComment "^#"
highlight def link i3configComment Comment

syntax match i3configComment "^#[ a-zA-Z0-9\-,.:/\(\)\'\"’!+$_|`|#?´{}]\+"
highlight def link i3configComment Comment

syntax match i3configLeaderKey "^bindsym"
highlight def link i3configLeaderKey Special

syntax match i3configKey "$mod"
hi def link i3configKey Identifier

syntax match i3configKeys "$mod+[a-zA-Z0-9+]\+"
hi def link i3configKeys Identifier

syntax match i3configAction "move\|exec\|split\|fullscreen\|floating\|focus\|workspace\|container\|reload\|restart\|resize\|kill\|border\|exec_always"
hi def link i3configAction Keyword

syn match i3configOther " to "
hi def link i3configOther Delimiter

syn match i3configString "\"[ a-zA-Z0-9\-,.:/'’?]\+\""
hi def link i3configString String

syn match i3configDefine "^set\|^font"
hi def link i3configDefine Define

