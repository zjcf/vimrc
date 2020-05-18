" System Type {{{
let s:Gui = has('gui_running')
if has('mac') || has('macunix')
	let s:OS = 'mac'
elseif has('win32') || has('win64') || has('win32unix')
	let s:OS = 'windows'
else
	let s:OS = 'linux'
endif
"}}}
"INIT{{{
set nu
set sc
set fileencodings=utf-8,gbk,ucs-bom,cp936
set encoding=utf-8
if version > 603
        set helplang=cn
    endif
    set fdm=marker
"Enable syntax hl
syntax on
"mapleader
let mapleader = ","
let g:mapleader = ","
" Sets how many lines of history VIM has to remember
set history=700
" Set to auto read when a file is changed from the outside
set autoread
set modelines=1
"}}}

" Vundle Begin {{{
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()
"}}}
" Vundle {{{
Plugin 'vim-scripts/SearchComplete'
Plugin 'vim-scripts/AutoTag'
Plugin 'tpope/vim-git'
Plugin 'SyntaxAttr.vim'

"php {{{
Plugin 'shawncplus/phpcomplete.vim'

"php syntax check
Plugin 'scrooloose/syntastic'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"}}}
"fold {{{
Plugin 'Konfekt/FastFold'
let g:fastfold_savehook = 1
let g:fastfold_fold_command_suffixes =  ['x','X','a','A','o','O','c','C']
let g:fastfold_fold_movement_commands = [']z', '[z', 'zj', 'zk']
"}}}
"molokai{{{
"Plugin 'molokai'
"set t_Co=256
"colo molokai
"let g:molokai_original = 1
"}}}
"solarized{{{
Plugin 'altercation/vim-colors-solarized'
set background=dark
colorscheme solarized
let g:solarized_underline=0
"}}}
"Shougo/neocomplcache{{{
Plugin 'Shougo/neocomplcache'
set completeopt-=preview
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_underbar_completion = 1
let g:neocomplcache_caching_limit_file_size = 50000000
let g:neocomplcache_min_syntax_length = 2 
"<CR>: close popup and save indent.
inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"
"<TAB>: completion. NO USE with snipmate
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
"<C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-Y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()
"let g:neocomplcache_enable_auto_select = 1
"}}}
"html {{{
Plugin 'othree/html5.vim'
"}}}
"JS {{{
Plugin 'pangloss/vim-javascript'
let g:javascript_enable_domhtmlcss=1 
"}}}
" CSS {{{
Plugin 'hail2u/vim-css3-syntax'
" }}}
" volt {{{
"Plugin 'etaoins/vim-volt-syntax'
" }}}
" xml {{{
Plugin 'sukima/xmledit'
" }}}
" indent guide {{{
"Plugin 'nathanaelkane/vim-indent-guides'
"let g:indent_guides_enable_on_vim_startup = 1
"let g:indent_guides_auto_colors = 1
"let g:indent_guides_start_level = 2
"let g:indent_guides_guide_size = 1
"let g:indent_guides_color_hex_guibg_pattern = 20
" }}}
" nerdtree {{{
Plugin 'scrooloose/nerdtree'
let g:NERDChristmasTree = 1
let g:NERDTreeQuitOnOpen = 1
let g:NERDTreeMinimalUI = 1
let g:NERDShowBookMarks = 1
let g:NERDTreeIgnore = ['\.pyc$']
noremap <F2> :NERDTreeToggle<cr>
" }}}
" nerdcommenter {{{
Plugin 'scrooloose/nerdcommenter'
" }}}
"  tpope/vim-surround {{{
Plugin 'tpope/vim-surround'
" }}}
"  phalcon-zephir {{{
Plugin 'xwsoul/vim-zephir'
"  }}}
"  emmet {{{
Plugin 'mattn/emmet-vim'
let g:user_emmet_leader_key='<C-K>'
"  }}}
"  CTLP {{{
Plugin 'kien/ctrlp.vim'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_regexp = 1
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

"  }}}

"}}}
" Vundle End {{{
" All of your Plugins must be added before the following line
"call vundle#end()            " required
filetype plugin indent on    " required
" }}}

" User Interface {{{
" Set 7 lines to the curors - when moving vertical..
set so=7
set wildmenu "Turn on WiLd menu
set ruler "Always show current position
set hid "Change buffer - without saving
" Set backspace config
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
" set ignorecase "Ignore case when searching
set smartcase
set hlsearch "Highlight search things
set incsearch "Make search act like search in modern browsers
set nolazyredraw "Don't redraw while executing macros
set magic "Set magic on, for regular expressions
set showmatch "Show matching bracets when text indicator is over them
set mat=2 "How many tenths of a second to blink
" No sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500
"}}}
" Colors and Fonts {{{
" Set font according to system
if s:OS == "mac"
	set gfn=Menlo:h14
	set shell=/bin/bash
    if s:Gui
        set guioptions-=T
        set guioptions-=L
        set guioptions-=r
    endif
elseif s:OS == "windows"
	set gfn=Yahei_Consolas_Hybrid:h12:cGB2312
    let &termencoding=&encoding
    set fileencodings=utf-8,gbk,ucs-bom,cp936
    source $VIMRUNTIME/vimrc_example.vim
    source $VIMRUNTIME/mswin.vim
    behave mswin
    if s:Gui
        set guioptions-=T
        set guioptions-=r
        set guioptions-=b
        set guioptions-=l
        set guioptions-=L
        au GUIEnter * simalt ~x
    endif
elseif s:OS == "linux"
	set gfn=Monospace\ 10
	set shell=/bin/bash
endif
set ffs=unix,dos,mac "Default file types
"}}}
" Files, backups and undo {{{
" Turn backup off, since most stuff is in SVN, git anyway...
set nobackup
set nowb
set noswapfile
"}}}
" Text, tab and indent related {{{
set expandtab
set shiftwidth=4
set tabstop=4
set smarttab
set ai "Auto indent
set si "Smart indet
set wrap "Wrap lines

"indent guide
"autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
"autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4
"}}}
" Statusline {{{
" Always hide the statusline
set laststatus=2
" Format the statusline
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ Line:\ %l/%L:%c
function! CurDir()
	let curdir = substitute(getcwd(), '/Users/amir/', "~/", "g")
	return curdir
endfunction
function! HasPaste()
	if &paste
		return 'PASTE MODE  '
	else
		return ''
	endif
endfunction
"}}}
"

" Filetype Specified {{{
""""""""""""""""""""""""""""""
" => PHP section
""""""""""""""""""""""""""""""
autocmd FileType php setlocal omnifunc=phpcomplete#CompletePHP
let g:php_folding = 1
""""""""""""""""""""""""""""""
" => html section
""""""""""""""""""""""""""""""
autocmd BufRead,BufNewFile *.volt set ft=html
autocmd BufRead,BufNewFile *.vue  set ft=html
""""""""""""""""""""""""""""""
" => CSS section
""""""""""""""""""""""""""""""
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS

""""""""""""""""""""""""""""""
" => Python section
""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""
" => JavaScript section
"""""""""""""""""""""""""""""""
au FileType javascript call JavaScriptFold()

function! JavaScriptFold()
	setl foldmethod=syntax
	setl foldlevelstart=1
	syn region foldBraces start=/{/ end=/}/ transparent fold keepend extend

	function! FoldText()
		return substitute(getline(v:foldstart), '{.*', '{...}', '')
	endfunction
	setl foldtext=FoldText()
endfunction

"}}}

" vim:fdm=marker
