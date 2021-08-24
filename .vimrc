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

set rtp+=/usr/local/lib/python3.5/dist-packages/powerline/bindings/vim/
set laststatus=2
set t_Co=256


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
    Plugin 'tpope/vim-fugitive'
    Plugin 'vim-scripts/AutoComplPop'
    Plugin 'pangloss/vim-javascript'
    Plugin 'mxw/vim-jsx'
    Plugin 'preservim/nerdtree'
        let g:NERDTreeWinSize= 25
				let g:NERDTreeChdirMode = 2
				let g:NERDTreeShowHidden = 1
    Plugin 'Vimjas/vim-python-pep8-indent'
    Plugin 'tpope/vim-surround'
		Plugin 'nathanaelkane/vim-indent-guides'
      let g:indent_guides_enable_on_vim_startup = 0
			let g:indent_line_char = '!'	
		"	set ts=2 sw=2
		"	let g:indent_guides_start_level = 2
		let g:indent_guides_auto_colors = 0 
			autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=#8b8792 ctermbg=235 
			autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd guibg=#303030 ctermbg=236
		" fzf on vim!!!
    " Plugin 'junegunn/fzf'
		Plugin 'junegunn/fzf.vim'
    Plugin 'SirVer/ultisnips'
    Plugin 'honza/vim-snippets'
    Plugin 'morhetz/gruvbox'
    Plugin 'tpope/vim-commentary'
    Plugin 'critiqjo/vim-bufferline'
      let g:bufferline_echo = 1
    Plugin 'xuhdev/vim-latex-live-preview' 
    let g:livepreview_previewer = 'atril'
   Plugin 'tmux-plugins/vim-tmux-focus-events'
   Plugin 'tmux-plugins/vim-tmux'
   Plugin 'gpanders/vim-oldfiles'

   Plugin 'iamcco/markdown-preview.vim'

   Plugin 'ternjs/tern_for_vim', { 'do': 'npm install' }
   autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
   " syntax and indent (for php ?)
   Plugin 'nelsyeung/twig.vim'


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
"if exists("~/.autoclose.vim")
  source ~/.autoclose.vim
"endif


" colorscheme default
let g:gruvbox_bold = 0
let g:gruvbox_contrast_dark = 'soft'
" let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_contrast_light = 'hard'
" colorscheme 256-jungle
" colorscheme bluedrake
" colorscheme Atelier_HeathDark 
" colorscheme 0x7A69_dark
" colorscheme Atelier_SulphurpoolDark

"Change theme depending on the time of day
let hr = (strftime('%H'))
if hr >= 21
  colorscheme 256-jungle
elseif hr >= 20
  colorscheme Atelier_DuneDark
elseif hr >= 18
  colorscheme gruvbox
  set background=dark
elseif hr >= 12
  colorscheme bluedrake
elseif hr >= 8
  colorscheme Tomorrow
elseif hr >= 7
  colorscheme lightning
elseif hr >= 6
  colorscheme gruvbox
  set background=light
elseif hr >= 0
  colorscheme Atelier_SulphurpoolDark
endif 


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" REMMAPPING (SHORTCUT)
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Attempt to solve the pronlem af arrow keys in insert mode
imap <Left> <Esc>hi
imap <Right> <Esc>li
let mapleader = ','
noremap <leader>so :source $MYVIMRC<CR>
noremap <leader>w :w<cr>
noremap <leader>q :q<cr>
noremap <leader>F :Files<cr>
noremap <leader>H :History<cr>

" PDF latex live view
nnoremap <leader>P :LLPStartPreview<CR>
" Open NERDTree at current file location
nnoremap <leader>N :NERDTreeFind<CR>
" fzfind available snippets for current filetype
nnoremap <leader>S :Snippets<CR>
nnoremap <leader>M :MarkdownPreview<CR>

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>n :bn<CR>
nnoremap <leader>p :bp<CR>
nnoremap <leader>d :bd<CR>

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
inoremap {<CR> {<CR>}<ESC>O

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
                " END REMMAPPING "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" Colors don't match on closing tags #87
highlight link xmlEndTag xmlTag
" Suppose to save folds :(
" ==> indeed, it does :)
autocmd BufWinLeave *.* mkview
autocmd BufWinLeave *.* silent loadview

" Using an old jquery highlighter
au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery

