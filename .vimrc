filetype plugin indent on    " required
set number "设置显示行号
set showcmd "在状态栏显示正在输入的命令
set background=dark "为深色背景调整配色
set tabstop=4 shiftwidth=4 expandtab
set laststatus=2
set cursorline "十字光標 横向
"set cursorcolumn "十字光标 纵向

syntax on "开启语法高亮
syntax enable

if has('gui_running')
    colorscheme solarized
    set guifont=Monaco:h20
endif

