"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
syntax enable
if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"if has("autocmd")
"  filetype plugin indent on
"endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd		" Show (partial) command in status line.
"set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
set autowrite		" Automatically save before commands like :next and :make
"set hidden		" Hide buffers when they are abandoned
set mouse=a		" Enable mouse usage (all modes)
"set guifont=Consolas:h12 " font type and size
set vb t_vb= "disable sound
"set list "replace tab character with '|'
"set listchars=tab:\|\
set fileencodings=utf-8,gbk,gb18030,gb2312


"===================cmd下中文乱码=============
set fileencodings=utf-8,gbk,cp936,ucs-bom,gb2312
source $VIMRUNTIME/delmenu.vim "remove menu
source $VIMRUNTIME/menu.vim "add new menu
language messages gb2312 "message bar
"=============================================


"~~~~~~~~~~~~~~~~~~~~something I like~~~~~~~~~~~~~~~~~~~~~~
"tabshift
set ts=4
"禁止闪烁
set gcr=a:block-blinkon0
"gnome terminal should go with:
" gsettings set org.gnome.desktop.interface cursor-blink false
"show line numbers
set nu
"c language indext style
set cindent
"auto remove .swp file(s) when exit vi
set nobackup
"number of color
set t_Co=256
"status line, plz comment it if your screen is TOO SMALL...
set laststatus=2
"show indent as different sympol
"set list
"set listchars=tab:▸\ ,eol:¬
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~




"-------------------------------------------Bundle Start-------------------------------------"
"git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
"Command:
" :PluginList
" :PluginInstall
" :PluginSearch foo
" :PluginClean => 删除插件首先要在.vimrc中注释掉插件相应的行，再运行该命令  
set nocompatible                " be iMproved
filetype off                    " required!
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"Let Vundle manage Vundle, required.
Plugin 'VundleVim/Vundle.vim'

"-------------Other scripts managed by vundle--------------"
"Sample:
"Plugin 'VundleVim/Vundle.vim'
"Plugin 'tpope/vim-fugitive' => github.com/tpope/...
"Plugin 'L9' => from http://vim-scripts.org/vim/scripts.html
"Plugin 'git://git.wincent.com/commend-t.git'
"Plugin 'file:///home/dong/some-plugin'
"Plugin 'user/L9', {'name': 'newL9'}

" No.1
Plugin 'lsdr/monokai' "monokai syntax color
" No.2
Plugin 'Soares/rainbow.vim' "provide rainbow colors for your vim...

" No.3
" powerline 状态栏
"Plugin 'Lokaltog/vim-powerline'
"let g:Powerline_symbols = 'fancy'
"let Powerline_symbols = 'compatible'

" No.4
"optimize status line
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" No.5
"彩虹括号增强版
Plugin 'kien/rainbow_parentheses.vim'
let g:rainbow_active = 1
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
"au VimEnter * RainbowParenthesesToggle
"au Syntax * RainbowParenthesesLoadRound
"au Syntax * RainbowParenthesesLoadSquare
"au Syntax * RainbowParenthesesLoadBraces

" No.6
Plugin 'scrooloose/nerdtree' "目录树导航 安装后可用Ctrl-t快捷键打开(见下文的按键映射C-t)
autocmd QuickFixCmdPost [^l]* nested cwindow "for nerdtree
autocmd QuickFixCmdPost    l* nested lwindow "also for nerdtree
" open nerdtree default if no file is appointed to vim when startup
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"open nerdtree when startup
"autocmd vimenter * NERDTree 
"map `Ctrl-t` to open/close nerdtree quickly
map <C-t> :NERDTreeToggle<CR>
"close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"change default arrows
"let g:NERDTreeDirArrowExpandable = '>'
"let g:NERDTreeDirArrowCollapsible = 'v'

" No.7
"Plugin 'jiangmiao/auto-pairs' "括号补齐
" No.8
"Plugin 'Raimondi/delimitMate' "括号补齐

" No.9
"Plugin 'Valloric/YouCompleteme'
" No.10
"Plugin 'scrooloose/syntastic' "自动语法检查

" No.11
Plugin 'hynek/vim-python-pep8-indent' "for python indext

" NO.12
"javascript syntax and indent
"Plugin 'pangloss/vim-javascript'
"let g:javascript_conceal_function   = "ƒ"
"let g:javascript_conceal_null       = "ø"
"let g:javascript_conceal_this       = "@"
"let g:javascript_conceal_return     = "⇚"
"let g:javascript_conceal_undefined  = "¿"
"let g:javascript_conceal_NaN        = "ℕ"
"let g:javascript_conceal_prototype  = "¶"
"let g:javascript_conceal_static     = "•"
"let g:javascript_conceal_super      = "Ω"
call vundle#end()
filetype plugin indent on
"------------------------------------Bundle End-------------------------------------------------




"============================ quick command for compile and run ===============================
"F2 编译
"map<f2> :!g++ % -o %< -o2 -Wall<cr>
" Save & Make
" nnoremap <F5> :w<CR>:make %< CC=gcc CFLAGS="-Wall -g -O2"<CR>
nnoremap <F6> :w<CR>:make %< CC=g++ CFLAGS="-Wall -g -O2 -std=c++11"<CR>:!time ./%< < %<.in<CR>
" nnoremap <F7> :copen<CR>
"===============================================================================================




"---------------------------------------make file header fastly(with `Fx`)------------------------
"====F2==== .c .cpp .php .java(anything with /* */ style comment)
map <F2> :call SetTitle()<CR>
func SetTitle()
	let l = 0
	let l = l + 1 | call setline(l,'/* **********************************************')
	let l = l + 1 | call setline(l,'')
	let l = l + 1 | call setline(l,'  File Name: '.expand('%'))
	let l = l + 1 | call setline(l,'')
	let l = l + 1 | call setline(l,'  Author: zhengdongjian@tju.edu.cn')
	let l = l + 1 | call setline(l,'')
	let l = l + 1 | call setline(l,'  Created Time: '.strftime('%c'))
	let l = l + 1 | call setline(l,'')
	let l = l + 1 | call setline(l,'*********************************************** */')
	let l = l + 1 | call setline(l,'')
endfunc
"==========

"====F3==== .cpp(.cc)
map <F3> :call SetTitleCpp()<CR>
func SetTitleCpp()
	let l = 0
	let l = l + 1 | call setline(l,'/* **********************************************')
	let l = l + 1 | call setline(l,'')
	let l = l + 1 | call setline(l,'  File Name: '.expand('%'))
	let l = l + 1 | call setline(l,'')
	let l = l + 1 | call setline(l,'  Author: zhengdongjian@tju.edu.cn')
	let l = l + 1 | call setline(l,'')
	let l = l + 1 | call setline(l,'  Created Time: '.strftime('%c'))
	let l = l + 1 | call setline(l,'')
	let l = l + 1 | call setline(l,'*********************************************** */')
	let l = l + 1 | call setline(l, '#include <bits/stdc++.h>')
	let l = l + 1 | call setline(l, 'using namespace std;')
	let l = l + 1 | call setline(l, '')
endfunc
"==========

"====F4==== .sh
map <F4> :call SetTitleSh()<CR>
func SetTitleSh()
	let l = 0
	let l = l + 1 | call setline(l,'#!/bin/bash')
	let l = l + 1 | call setline(l,'#################################################')
	let l = l + 1 | call setline(l,'#  File Name: '.expand('%'))
	let l = l + 1 | call setline(l,'#  ')
	let l = l + 1 | call setline(l,'#  Author: zhengdongjian@tju.edu.cn')
	let l = l + 1 | call setline(l,'#  ')
	let l = l + 1 | call setline(l,'#  Created Time: '.strftime('%c'))
	let l = l + 1 | call setline(l,'#  ')
	let l = l + 1 | call setline(l,'#################################################')
	let l = l + 1 | call setline(l,'')
endfunc
"==========

"====F5==== .py
map <F5> :call SetTitlePy()<CR>
func SetTitlePy()
	let l = 0
	let l = l + 1 | call setline(l, '# -*- coding:utf-8 -*-')
	let l = l + 1 | call setline(l, '# Author: zhengdongjian@tju.edu.cn')
	let l = l + 1 | call setline(l, '# Create Time: '.strftime('%c'))
	let l = l + 1 | call setline(l, '')
	let l = l + 1 | call setline(l, 'import sys')
	let l = l + 1 | call setline(l, 'reload(sys)')
	let l = l + 1 | call setline(l, "sys.setdefaultencoding('utf-8')")
	let l = l + 1 | call setline(l, '')
endfunc
"==========

".js .py .json .html .php .jade
if has("autocmd")
	augroup filetypedetect
	au Filetype javascript setlocal ts=2 sts=2 sw=2 expandtab
	au Filetype python setlocal ts=4 sts=4 sw=4 expandtab
	au Filetype json setlocal ts=2 sts=2 sw=2 expandtab
	au Filetype html setlocal ts=2 sts=2 sw=2 expandtab
	au Filetype php setlocal ts=4 sts=4 sw=4 expandtab
	au BufNewFile,BufRead *.jade setlocal ts=2 sts=2 sw=2 expandtab
	augroup END
endif
