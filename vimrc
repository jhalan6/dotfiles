set nocompatible              " be iMproved, required

" history存储长度。
set history=1000

set nu
set rnu

set shortmess=atI       " 启动的时候不显示那个援助索马里儿童的提示

" 针对不同的文件类型采用不同的缩进格式
filetype indent on
"允许插件
filetype plugin on

"开启语法高亮
syntax enable
syntax on

"配色方案 三种,选一个
"colorscheme darkblue          " 深蓝色配色方案。

colorscheme desert " 经典配色方案。
set background=dark

"同sublime text2
"colorscheme desert

"显示当前的行号列号：
set ruler
"在状态栏显示正在输入的命令
set showcmd

"j 能到达的光标位置距离底端的行数。避免通过ij定位时光标到最上面或者最下面
set so=7

set magic


"设置文内智能搜索提示
" 高亮search命中的文本。
set hlsearch
" 搜索时忽略大小写
set ignorecase
" 随着键入即时搜索
set incsearch
" 有一个或以上大写字母时仍大小写敏感
set smartcase

set t_Co=256

"vundle
if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif


" 代码折叠
set foldenable
" 折叠方法
" manual    手工折叠
" indent    使用缩进表示折叠
" expr      使用表达式定义折叠
" syntax    使用语法定义折叠
" diff      对没有更改的文本进行折叠
" marker    使用标记进行折叠, 默认标记是 {{{ 和 }}}
" set foldmethod=syntax
" 在左侧显示折叠的层次
"set foldcolumn=4

set tabstop=4                " 设置Tab键的宽度        [等同的空格个数]
set shiftwidth=4
set expandtab                " 将Tab自动转化成空格
"[需要输入真正的Tab键时，使用 Ctrl+V + Tab]
" 按退格键时可以一次删掉 4 个空格
set softtabstop=4

"需要支持删除
set backspace=eol,start,indent
" 设置新文件的编码为 UTF-8
set fileencoding=utf8
"set enc=2byte-gb18030
" 自动判断编码时，依次尝试以下编码：
set fileencodings=ucs-bom,utf-8,gb18030,default
" gb18030 最好在 UTF-8 前面，否则其它编码的文件极可能被误识为 UTF-8

" 剪切板 与系统共享
 set clipboard=unnamed
" 取消备份。  
set nobackup  
