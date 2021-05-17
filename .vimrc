"""""""""""""""""""""""""""""""""""""""""""""""""""""""

" All system-wide defaults are set in $VIMRUNTIME/debian.vim (usually just
" /usr/share/vim/vimcurrent/debian.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vim/vimrc), since debian.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing debian.vim since it alters the value of the
" 'compatible' option.
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vim/vimrc), since debian.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing debian.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
" set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
syntax on




" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
set background=dark
"set background=light
"Change theme depending on the time of day
" let hr = (strftime('%H'))
" if hr >= 18
"   set background=dark
" elseif hr >= 6
"   set background=light
" elseif hr >= 0
"   set background=dark
" endif 
" 
" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
  filetype plugin indent on
endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd		" Show (partial) command in status line.
"set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden             " Hide buffers when they are abandoned
" set mouse=a		" Enable mouse usage (all modes)

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif





"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" BEGIN  set-naka Pour le confort
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
set expandtab
" set the tab to 4 spaces
set number
" set line number back and foreground
" highlight LineNr cterm=bold ctermfg=0 ctermbg=0 guibg=DarkGrey
highlight LineNr ctermfg=239 ctermbg=234 guifg=#4e4e4e guibg=#1c1c1c


" set paste
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set noswapfile
set relativenumber

set colorcolumn=80  " word wrap
  highlight ColorColumn term=bold cterm=bold ctermfg=239 ctermbg=236
  \ gui=bold guifg=#4e4e4e guibg=#303030

" visualize choices while hitting <TAB>
set wildmenu
set incsearch
set smartcase     " case-sensitive on uppercase
set ignorecase    " coupled with smartcase: case insensitive
set cursorline


"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" END Pour le confort
"""""""""""""""""""""""""""""""""""""""""""""""""""""""





"" acp - neocomp
"" Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
"" Disable AutoComplPop.
"let g:acp_enableAtStartup = 0
"" Use neocomplcache.
"let g:neocomplcache_enable_at_startup = 1
"" Use smartcase.
"let g:neocomplcache_enable_smart_case = 1
"" Set minimum syntax keyword length.
"let g:neocomplcache_min_syntax_length = 3
"let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
"
"" Enable heavy features.
"" Use camel case completion.
""let g:neocomplcache_enable_camel_case_completion = 1
"" Use underbar completion.
""let g:neocomplcache_enable_underbar_completion = 1
"
"" Define dictionary.
"let g:neocomplcache_dictionary_filetype_lists = {
"    \ 'default' : '',
"    \ 'vimshell' : $HOME.'/.vimshell_hist',
"    \ 'scheme' : $HOME.'/.gosh_completions'
"        \ }
"
"" Define keyword.
"if !exists('g:neocomplcache_keyword_patterns')
"    let g:neocomplcache_keyword_patterns = {}
"endif
"let g:neocomplcache_keyword_patterns['default'] = '\h\w*'
"
"
"" Enable omni completion.
"autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
"autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
"autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
"autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
"autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
"
"" Enable heavy omni completion.
"if !exists('g:neocomplcache_force_omni_patterns')
"  let g:neocomplcache_force_omni_patterns = {}
"endif
"let g:neocomplcache_force_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:neocomplcache_force_omni_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplcache_force_omni_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'
"
"" For perlomni.vim setting.
"" https://github.com/c9s/perlomni.vim
"let g:neocomplcache_force_omni_patterns.perl = '\h\w*->\h\w*\|\h\w*::'
"

set rtp+=/home/harmenszoon2/.local/lib/python3.7/site-packages/powerline/bindings/vim/plugin/powerline.vim
set laststatus=2
set t_Co=256



" """"""""""""""""""""""""""""""""""
" Powerline

" vim_powerline=$(sudo find / | grep  "powerline\.vim")
" add to ~/-vimrc
"set rtp+='"/usr/share/vim/addons/plugin/powerline.vim"'
"set rtp+=/usr/local/lib/python3.5/dist-packages/powerline/bindings/vim/
"set laststatus=2 
"set t_Co=256" >> ~/.vimrc
"execute pathogen#infect()
"set tabline=%!tabber#TabLine()"
" """"""""""""""""""""""""""""""""""





" Resaka autocompletion avc YouCompleteMe
let g:ycm_key_list_select_completion=[]
let g:ycm_key_list_previous_completion=[]

" https://github.com/ycm-core/YouCompleteMe#user-guide
let g:ycm_python_interpreter_path = ''
let g:ycm_python_sys_path = []
let g:ycm_extra_conf_vim_data = [
  \  'g:ycm_python_interpreter_path',
  \  'g:ycm_python_sys_path'
  \]
" let g:ycm_global_ycm_extra_conf = '~/.global_extra_conf.py'
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'

let g:ycm_collect_identifiers_from_tags_files = 1



"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Resaka gestionnaire de plugins
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""



" Was I Supposed to add since the very beginning???
set rtp+=~/.fzf


"""""""""""""""""""""""""""""""""""""""""""""""""""""""
"						BEGIN of plugin management								" 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""


call vundle#begin()
    " alternatively, pass a path where Vundle should install plugins
    "call vundle#begin('~/some/path/here')

    " let Vundle manage Vundle, required
    Plugin 'VundleVim/Vundle.vim'

    " The following are examples of different formats supported.
    " Keep Plugin commands between vundle#begin/end.
    " plugin on GitHub repo
    Plugin 'tpope/vim-fugitive'
    "
    " File manager
    " A tree explorer plugin for vim.
    Plugin 'preservim/nerdtree'
        let g:NERDTreeWinSize= 15
				let g:NERDTreeChdirMode = 2
				let g:NERDTreeShowHidden = 1


		Plugin 'nathanaelkane/vim-indent-guides'
		" :help indent-guides
		" Enable it by default:
		let g:indent_guides_enable_on_vim_startup = 0
			let g:indent_line_char = '!'	
		"	set ts=2 sw=2
		"	let g:indent_guides_start_level = 2
		let g:indent_guides_auto_colors = 0 
			autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=#8b8792 ctermbg=235 
			autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd guibg=#303030 ctermbg=236
      "
		" fzf on vim!!!
    Plugin 'junegunn/fzf'
		Plugin 'junegunn/fzf.vim'
    " theme
    Plugin 'morhetz/gruvbox'
    Plugin 'sirver/UltiSnips'
    Plugin 'honza/vim-snippets'


    " All of your Plugins must be added before the following line

call vundle#end()            " required

"""""""""""""""""""""""""""""""""""""""""""""""""""""""
"						END of plugin management									" 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""





autocmd BufNewFile,BufRead *.js set filetype=javascript.jsx
autocmd BufNewFile,BufRead *.jsx set filetype=javascript.jsx


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"				 BEGING .vimrc set for UltiSnips									 "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsUsePythonVersion=3
let g:UltiSnipsEditSplit="vertical"

" If you want :UltiSnipsEdit to split your window.
"clet g:UltiSnipsEditSplit="vertical"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"				 END .vimrc set for UltiSnips									 "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""





" Source an auto-pair-completion file out of plugin
if exists("~/.autoclose.vim")
  source ~/.autoclose.vim
endif





" colorscheme default
let g:gruvbox_bold = 0
let g:gruvbox_contrast_dark = 'soft'
" let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_contrast_light = 'hard'
" colorscheme 256-jungle
colorscheme gruvbox
" colorscheme Atelier_HeathDark 
" colorscheme 0x7A69_dark
" colorscheme Atelier_SulphurpoolDark


" REMMAPPING (SHORTCUT)

" Attempt to solve the pronlem af arrow keys in insert mode
imap <Left> <Esc>hi
imap <Right> <Esc>li



" ilay prefix eh!
let mapleader = ','



" Sourcing .vimrc
" nnoremap <leader>rv :source $MYVIMRC<CR>
noremap <leader>so :source $MYVIMRC<CR>


" save and quit
noremap <leader>w :w<cr>
noremap <leader>q :q<cr>

" Fuzzy find files 
noremap <leader>f :Files<cr>
" noremap <leader>H :History<cr>
" nnoremap <leader>H :call fzf#run({'source': 'find . -type f -printf "%T@ %p\n" \| sort -nr \| cut -f2- -d" " ', 'sink': 'tabedit', 'down': '30%', 'options': '--reverse'})<CR>
" nnoremap <leader>H :call fzf#run({'source': 'find . -type f -printf "%T@ %p\n" \| sort -nr \| cut -f2- -d" " ', 'sink': 'tabedit', 'down': '20%'})<CR>
" nnoremap <leader>H :call fzf#run({'source': 'grep "^>" ~/.viminfo \| grep -v diary \| cut -d" " -f2 \| grep "^~"', 'sink': 'tabedit', 'down': '20%', 'options': '--layout=reverse-list'})<CR>
" Miantso ny derniers fichiers edités de manokatra amina tab vao2:
nnoremap <leader>H :call fzf#run({'source': 'grep "^>" ~/.viminfo \
  \| grep -v "diary.*txt$" \| cut -d" " -f2 \| grep "^~"', 'sink': 'tabedit', 
  \ 'down': '35%' })<CR>
nnoremap <leader>F :call fzf#run({'source': 'find . -type f ', 'sink': 
  \ 'tabedit', 'down': '30%'})<CR>




" Mbola tkn jerena fa misy conflit :p
" noremap <leader>l :bnext<CR>
" noremap <leader>h :bprevious<CR>

" Splited windows
" Switch between splited windows
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

nnoremap <leader><Down>  :resize -2<CR>
nnoremap <leader><Left>  :vertical resize -2<CR>
nnoremap <leader><Right> :vertical resize +2<CR>
nnoremap <leader><Up>    :resize +2<CR>






" Jump function def
" 'silent' means no verbose
nnoremap <silent> <leader>gd : YcmCompleter GoTo<CR>
nnoremap <silent> <leader>gf : YcmCompleter FixIt<CR>




" Auto close tag
inoremap <leader>ct </<Esc>2F<lyiwf/pa><Esc>F<i
" auto close tag with empty line
inoremap <leader>crt </<Esc>2F<lyiwf/pa><Esc>F<i<CR><CR><Esc>kS

" Comment JSX ligne 
"inoremap <leader>mc <Esc>0i{/* <Esc>$a */}
inoremap <leader>mc <Esc>0t<i{/* <Esc>$a */}

nnoremap <leader>n :bn<CR>
nnoremap <leader>p :bp<CR>
nnoremap <leader>d :bd<CR>


" Auto close?
"inoremap " ""<left>
"inoremap ' ''<left>
"inoremap ( ()<left>
"inoremap [ []<left>
"inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
"inoremap {;<CR> {<CR>};<ESC>O






" Colors don't match on closing tags #87
highlight link xmlEndTag xmlTag




" Suppose to save folds :(
autocmd BufWinLeave *.* mkview
autocmd BufWinLeave *.* silent loadview






" " filenames like *.xml, *.html, *.xhtml, ...
" " These are the file extensions where this plugin is enabled.
" "
" let g:closetag_filenames = '*.html,*.xhtml,*.phtml'
" 
" " filenames like *.xml, *.xhtml, ...
" " This will make the list of non-closing tags self-closing in the specified files.
" "
" let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'
" 
" " filetypes like xml, html, xhtml, ...
" " These are the file types where this plugin is enabled.
" "
" let g:closetag_filetypes = 'html,xhtml,phtml'
" 
" " filetypes like xml, xhtml, ...
" " This will make the list of non-closing tags self-closing in the specified files.
" "
" let g:closetag_xhtml_filetypes = 'xhtml,jsx'
" 
" " integer value [0|1]
" " This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
" "
" let g:closetag_emptyTags_caseSensitive = 1
" 
" " dict
" " Disables auto-close if not in a "valid" region (based on filetype)
" "
" let g:closetag_regions = {
"     \ 'typescript.tsx': 'jsxRegion,tsxRegion',
" 		    \ 'javascript.jsx': 'jsxRegion',
" 				    \ }
" 
" " Shortcut for closing tags, default is '>'
" "
" let g:closetag_shortcut = '>'
" 
" " Add > at current position without closing the current tag, default is ''
" "
" let g:closetag_close_shortcut = '<leader>>'
" 
" 
" 



" vim-jsx
" By default, JSX syntax highlighting and indenting will be enabled for files with the .js and .jsx extension. If you would like JSX only in .jsx files, add
" 
" let g:jsx_ext_required = 1
" 
" to your .vimrc or somewhere in your include path. If you wish to restrict JSX to files with the pre-v0.12 @jsx React.DOM pragma, add
" 
" let g:jsx_pragma_required = 1
" 


" autocmd FileType javascript setlocal omnifunc=tern#Complete


