set encoding=utf-8
" 配置Vnudle
"no compatible for vi
set nocompatible
" required
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" 加入NERDTree
Plugin 'scrooloose/nerdtree'
map <F1> :NERDTree<CR>

" 自动补全
Plugin 'Valloric/YouCompleteMe'
" 自动补全配置
set completeopt=longest,menu    "让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
autocmd InsertLeave * if pumvisible() == 0|pclose|endif "离开插入模式后自动关闭预览窗口
let g:ycm_error_symbol = '✗'   "设置错误标志
let g:ycm_warning_symbol = '⚠' "设置警告标志
let g:ycm_confirm_extra_conf = 0 "关闭加载.ycm_extra_conf.py提示
let g:ycm_collect_identifiers_from_tags_files = 1 " 开启 YCM 基于标签引擎
let g:ycm_min_num_of_chars_for_completion = 2 " 从第2个键入字符就开始罗列匹配项
let g:ycm_cache_omnifunc = 1
let g:ycm_seed_identifiers_with_syntax = 1    " 语法关键字补全
let g:ycm_add_preview_to_completeopt = 0      "关闭补全预览
let g:ycm_open_loclist_on_ycm_diags = 0
nnoremap <leader>d :YcmDiag<CR>   "产生错误列表
nnoremap <leader>lo :lopen<CR>    "打开错误列表
nnoremap <leader>lc :lclose<CR>   "关闭错误列表
nnoremap <leader>jd :YcmCompleter GoTo<CR> "跳转到定义
" 在注释输入中也能补全
let g:ycm_complete_in_comments = 1
" 在字符串输入中也能补全
let g:ycm_complete_in_strings = 1
" 注释和字符串中的文字也会被收入补全
let g:ycm_collect_identifiers_from_comments_and_strings = 1
" 基于语义的补全
let g:ycm_semantic_triggers =  {
            \ 'c,cpp,go': ['re!\w{2}'],
            \ }
" 在哪些文件中使用YCM
let g:ycm_filetype_whitelist = {
            \ "c":1,
            \ "cpp":1,
            \ "go":1,
            \ }
let g:ycm_key_list_select_completion = ['<TAB>', '<Down>']
let g:ycm_autoclose_preview_window_after_completion = 1

" 头文件/实现文件切换
Plugin 'micbou/a.vim'
nnoremap <leader>a :A<CR>

" go插件
Plugin 'fatih/vim-go'
" 禁止vim-go在创建文件时自动填充内容
let g:go_template_autocreate = 0
" 避免vim-go保存时破坏折叠
let g:go_fmt_experimental = 1
autocmd BufWritePre *.go :GoImports
nnoremap <leader>r :w<CR>:GoRun<CR>
nnoremap <leader>b :w<CR>:GoBuild<CR>
map <leader>[ :cnext<CR>
map <leader>] :cprevious<CR>
nnoremap <leader>c :cclose<CR>
let g:go_def_mode = 'godef'
autocmd filetype go nnoremap <leader>jd :GoDef<CR> "跳转到定义

" thrift 高亮
Plugin 'solarnz/thrift.vim'

" 和tmux共享剪切板
Plugin 'tmux-plugins/vim-tmux-focus-events'
Plugin 'roxma/vim-tmux-clipboard'

" c++增强高亮
Plugin 'octol/vim-cpp-enhanced-highlight'

" 锁进线条
Plugin 'yggdroot/indentline'

" 大纲浏览
Plugin 'majutsushi/tagbar'
nmap <leader>t :TagbarToggle<CR>

" 彩虹括号
Plugin 'kien/rainbow_parentheses.vim'
let g:rbpt_colorpairs = [
            \ ['magenta',     'purple1'],
            \ ['cyan',        'magenta1'],
            \ ['green',       'slateblue1'],
            \ ['yellow',      'cyan1'],
            \ ['red',         'springgreen1'],
            \ ['magenta',     'green1'],
            \ ['cyan',        'greenyellow'],
            \ ['green',       'yellow1'],
            \ ['yellow',      'orange1']
            \ ]
let g:rbpt_max = 9
let g:rbpt_loadcmd_toggle = 0
au VimEnter * RainbowParenthesesToggle
au VimEnter * RainbowParenthesesLoadRound     "()
au VimEnter * RainbowParenthesesLoadSquare    "[]
au VimEnter * RainbowParenthesesLoadBraces    "{}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" 私人配置v
echo "(>^.^<)"
set ls=2

"set number and relative number
set nu

"set syntax
syntax on

"help 'backup'
set nobackup

"no visualbell
set novisualbell

"help 'ruler' 屏幕下方显示标尺
set ruler

"help showcmd 屏幕下方显示未输入完成的命令
set showcmd

"help showmode 屏幕下方显示当前的模式
set showmode

"help scrolloff 屏幕上方和下方保留的行数
set scrolloff=5

"set backspace
set backspace=indent,eol,start

"set showmatch
set showmatch
set matchtime=0

"高亮显示所有的匹配结果
set hlsearch
hi Search term=standout ctermfg=0
hi SpellBad term=standout ctermfg=0


"增量匹配
set incsearch

"将tab转换为space
set expandtab

set smarttab
set autoindent
set smartindent

"为不同的文件类型设置不同的空格数替换TAB
"默认设为4
set sw=4
set ts=4
set sts=4

autocmd FileType scss set iskeyword+=-
autocmd FileType html,css,scss,xml set sw=2
autocmd FileType html,css,scss,xml set ts=2
autocmd FileType html,css,scss,xml set sts=2
autocmd FileType asm set sw=8 | set ts=8 | set sts=8

"设置制表符、行尾空格、行结束回显
set list listchars=eol:¬,tab:▸\ ,trail:.,

"自动补全
inoremap {{ {<CR>}<ESC>ko
inoremap [ []<ESC>i
inoremap " ""<ESC>i
inoremap ' ''<ESC>i

"set code fold
set foldenable
set foldmethod=syntax
set foldcolumn=0
setlocal foldlevel=1
set foldlevelstart=99

nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>

set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936

