set nocompatible "关闭 vi兼容

set nu "显示行数

set tabstop=4 "TAB 长度为四

set autoindent   "第一行缩进则后续行缩进

set cindent

set shiftwidth=4 "缩进的空白字符个数"

set hlsearch "搜索  高光匹配

set mouse=a   "鼠标启用

set ruler  	"光标的位置

set showcmd		"显示已输入的命令

set showmode 	"显示当前模式

set incsearch 	"显示匹配过程

set smartindent	"智能缩进

syntax on	"文本按语法亮颜色

set completeopt=longest,menu   "让Vim的补全菜单行为与一般IDE一致

set list lcs=tab:\¦\ 

colorscheme elflord  "使用的语法配色

"菜单配色
""highlight PMenu ctermfg=0 ctermbg=242 guifg=black guibg=grey       
""highlight PMenuSel ctermfg=242 ctermbg=8 guifg=darkgrey guibg=black



"符号匹配
""imap { {}<ESC>i<CR><ESC>V<O
imap { {}<ESC>i<CR><ESC>O
imap ( ()<ESC>i
imap [ []<ESC>i
"非递归展开
inoremap " ""<esc>i
inoremap ' ''<esc>i
inoremap ` ``<esc>i


"光标向后移动一位
imap <C-l> <esc>la
imap <F3> <Up>
imap <F2> <Down>

"""""""""""""""""" Vundle """""""""""""""""""
filetype off
"vundle 初始化
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim' "管理自己
"Plugin '插件名称'
Plugin 'taglist.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'jakwings/vim-colors'
Bundle 'OmniSharp/omnisharp-vim'
Plugin 'Yggdroot/indentLine'
call vundle#end()

filetype plugin indent on "加载vim自带插件
"""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""set taglist"""""""""""""""""
let Tlist_Use_Right_Window = 1 "让taglist窗口出现在Vim的右边

let Tlist_File_Fold_Auto_Close = 1 "当同时显示多个文件中的tag时，设置为1，可使taglist只显示当前文件tag，其它文件的tag都被折叠起来。

let Tlist_Show_One_File = 1 "只显示一个文件中的tag，默认为显示多个

let Tlist_Sort_Type ='name' "Tag的排序规则，以名字排序。默认是以在文件中出现的顺序排序

let Tlist_GainFocus_On_ToggleOpen = 1 "Taglist窗口打开时，立刻切换为有焦点状态

let Tlist_Exit_OnlyWindow = 1 "如果taglist窗口是最后一个窗口，则退出vim

let Tlist_WinWidth = 48 "设置窗体宽度为32，可以根据自己喜好设置

""let Tlist_Auto_Open=1    "自动打开
""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""YouCompleteMe""""""""""""""""""
let g:ycm_server_python_interpreter='/usr/bin/python3'   "没有这个 当调用默认的python2 某些功能不能使用   --------没测试出来 好像莫名其妙又好了
""let g:ycm_global_ycm_extra_conf = '/home/yang/.vim/bundle/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py'
let g:ycm_global_ycm_extra_conf = '/home/yang/.ycm_extra_conf.py'
let g:ycm_error_symbol = '!'
let g:ycm_warning_symbol = '?'
let g:ycm_show_diagnostics_ui = 0  "关闭语法检测

" Python Semantic Completion
let g:ycm_python_binary_path = '/usr/bin/python3'

let g:ycm_add_preview_to_completeopt = 0 "补全模式
let g:ycm_confirm_extra_conf=0 "静默加载配置文件
let g:ycm_seed_identifiers_with_syntax = 1  "C/C++关键字自动补全
let g:ycm_complete_in_comments = 1 "在注释输入中也能补全
let g:ycm_complete_in_strings = 1 "在字符串输入中也能补全
let g:ycm_collect_identifiers_from_comments_and_strings = 0 "注释和字符串中的文字也会被收入补全
let g:ycm_semantic_triggers =  {
		\ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
		\ 'cs,lua,javascript': ['re!\w{2}'],
		\ }   "输入两个字符后进行语义补充
let g:ycm_min_num_identifier_candidate_chars = 2 "自动补全两字符起步
let g:ycm_filetype_whitelist = { 
			\ "c":1,
			\ "cpp":1, 
			\ "objc":1,
			\ "sh":1,
			\ "zsh":1,
			\ "zimbu":1,
			\ }  "这些文件 启动 YCM
"""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""indentline""""""""""""""""""""
let g:indentLine_enabled = 1
let g:indentLine_char = '¦' 
let g:indentLine_color_term = 239
""""""""""""""""""""""""""""""""""""""""""""""""""
