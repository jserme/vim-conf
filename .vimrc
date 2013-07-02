"##########vundle config
set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

"let Vundle manage Vundle
"required! 
Bundle 'gmarik/vundle'
Bundle 'tpope/vim-fugitive'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'scrooloose/nerdtree'
Bundle 'maksimr/vim-jsbeautify'
Bundle 'wincent/Command-T'
Bundle 'sleistner/vim-jshint'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'tomtom/tlib_vim'
Bundle 'kchmck/vim-coffee-script'
"Bundle 'garbas/vim-snipmate'

" vim-scripts repos
Bundle 'TaskList.vim'
Bundle 'snipMate'
"Bundle 'neocomplcache'
"Bundle 'SuperTab'
" non github repos
" ...

filetype plugin indent on     " required!

"my vim config
set mouse=a     " Enable mouse usage (all modes) in terminals
set termencoding=utf-8
set foldmethod=manual

"encoding
set encoding=utf-8

"set fileencoding=utf-8
set fileencoding=euc-cn
set fileencodings=ucs-bom,utf-8,euc-cn,chinese,prc,taiwan,cp936,gbk

"tab转空格
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

"字体
set gfn=Monaco:h14

set list "把Tab显示出来
set listchars=tab:\|\ ,trail:.,extends:>,precedes:<

"行号
set number

"语法高亮
syntax on

"帮助语言
set helplang=cn

"搜索时高亮
set hlsearch

"输入搜索内容时就显示搜索结果
set incsearch

"定位到上次编辑处
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

"设置每行的最大字符数，超过的话，将换行
set textwidth=80

"状态栏
set laststatus=2
set statusline=%t%r%h%w\ [%Y]\ [%{&ff}]\ [%{&fenc}:%{&enc}]\ [十六进制%04.4B]\ [行%06.6l,列%06.6c]\ [%p%%-%P]\ [总行%06.6L]
highlight StatusLine guifg=SlateBlue guibg=Yellow
highlight StatusLineNC guifg=Gray guibg=White

let mapleader=","

"设置文件类型的检测
filetype on

"用css的方式写html,展开的快捷键
let g:sparkupExecuteMapping = '<leader>e'

nnoremap <silent> <leader>ff :call JsBeautify()<cr>
autocmd FileType javascript noremap <buffer> <silent> <leader>ff :call JsBeautify()<cr>
" for html
autocmd FileType html noremap <buffer> <silent> <leader>ff :call HtmlBeautify()<cr>
" for css or scss
autocmd FileType css noremap <buffer> <silent> <leader>ff :call CSSBeautify()<cr>

"清除windows下的换行
command -nargs=0 Clearwin : call Clearwin()
function Clearwin()
    silent execute ':%s/\r//g'
endfunction

"快速开新Tab
:map <C-t>   :tabnew<CR>
:imap <C-t> <ESC>:tabnew<CR>i

"快速换行
:map <C-s> :update<CR>
:map <C-j> i<CR><Esc>
:imap <C-s> <Esc>:update<CR>i

"打开状态栏标尺
set ruler

"去掉错误声音
set vb t_vb=

"在vim中粘贴代码有时会自动增加缩进，造成代码排版的混乱。
"输入 :set paste
"需要关闭时
"输入:set nopaste
set pastetoggle=<F6>

"TaskList
map <Leader>tt <Plug>TaskList
