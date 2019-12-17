" 自動縮排：啟用自動縮排以後，在貼上剪貼簿的資料時排版可能會亂掉，這時可以手動切換至貼上模式 :set paste 再進行貼上。
set ai

" 啟用暗色背景模式。
set background=dark

" 啟用行游標提示。
set cursorline

" 文字編碼加入 utf8。
set enc=utf8

" 標記關鍵字。
set hls

" 只在 Normal 以及 Visual 模式使用滑鼠，也就是取消 Insert 模式的滑鼠，
" set mouse=nv

" 顯示行號。
set number

" 顯示相對行號。
" set relativenumber

" 搜尋不分大小寫。
set ic

" 使用空白取到 Tab。
set expandtab

" 自訂縮排 (Tab) 位元數。
set tabstop=4
set shiftwidth=4

" 字數過長時換行。
"set wrap
" 不換行。
set nowrap

" 關閉嗶嗶聲。
set noeb

" 自動切換當前目錄。
" set autochdir

" 捲動時保留底下 3 行。
set scrolloff=3

" 摺疊 Folding。
"set foldenable
"set foldmethod=indent
"set foldcolumn=1
"set foldlevel=5

" 在 fish 裡相容 Vim 裡的 Neobundle。
set shell=/bin/bash

" 高亮當前行 (水平)。
set cursorline

" 高亮當前列 (垂直)。
set cursorcolumn
" ---------------------------------------------------------- Under Parts Are
"  from vundle : https://blog.gtwang.org/linux/vundle-vim-bundle-plugin-manager/
"
"set nocompatible              " be iMproved, required
"filetype off                  " required

" set the runtime path to include Vundle and initialize
"set rtp+=~/.vim/bundle/vundle/
"call vundle#rc()
" alternatively, pass a path where Vundle should install plugins
"let path = '~/some/path/here'
"call vundle#rc(path)

" let Vundle manage Vundle, required
"Plugin 'gmarik/vundle'

" The following are examples of different formats supported.
" Keep Plugin commands between here and filetype plugin indent on.
" scripts on GitHub repos
"Plugin 'tpope/vim-fugitive'
"Plugin 'Lokaltog/vim-easymotion'
"Plugin 'tpope/vim-rails.git'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" scripts from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
"Plugin 'FuzzyFinder'
" scripts not on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" ...

"call vundle#begin()
"Plugin 'scrooloose/nerdtree'
"call vundle#end()

"filetype plugin indent on     " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Plugin commands are not allowed.
" Put your stuff after this line
" --------------------------------------------- Under parts are from taglist
"  https://eeepage.info/tag-vim-source-insight/
" F7 - Enable/Disable taglist
" Ctrl + w + w : switch edit window
" Ctrl + ] : function declaration
" Ctrl + [ : nav back
map <C-f7> :Tlist<CR>
" nmap <F8> :TlistToggle<CR><CR>
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
set ut=100


" --------------------------------------------- Under parts are from Trinity
nmap <C-F8>  :TrinityToggleAll<CR>
nmap <C-F9>  :TrinityToggleSourceExplorer<CR>
nmap <C-F10> :TrinityToggleTagList<CR>
nmap <C-F11> :TrinityToggleNERDTree<CR>

" --------------------------------------------- Under parts are from Nerdtree
nmap <F9> :NERDTreeFind<CR><CR>
let NERDTreeWinPos=1

" --------------------------------------------- Under parts are from ctags
set tags=./tags,./TAGS,tags;~,TAGS;~

" --------------------------------------------- Under parts are from cscope
set cscopetag
set csto=0
if filereadable("cscope.out")
   cs add cscope.out
elseif $CSCOPE_DB != ""
   cs add $CSCOPE_DB
endif
set cscopeverbose
nmap zs :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap zg :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap zc :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap zt :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap ze :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap zf :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap zi :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap zd :cs find d <C-R>=expand("<cword>")<CR><CR>


