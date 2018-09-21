" 配置Vnudle
"no compatible for vi
set nocompatible
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" 加入NERDTree
Plugin 'scrooloose/nerdtree'

" 自动补全
Plugin 'Valloric/YouCompleteMe'

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

" set NERDTree
map <F1> :NERDTree<CR>

" 配置YCM
" 自动补全配置
set completeopt=longest,menu	"让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
autocmd InsertLeave * if pumvisible() == 0|pclose|endif	"离开插入模式后自动关闭预览窗口
"inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"	"回车即选中当前项
let g:ycm_confirm_extra_conf=0 "关闭加载.ycm_extra_conf.py提示
let g:ycm_collect_identifiers_from_tags_files=1	" 开启 YCM 基于标签引擎
let g:ycm_min_num_of_chars_for_completion=2	" 从第2个键入字符就开始罗列匹配项
let g:ycm_cache_omnifunc=0	" 禁止缓存匹配项,每次都重新生成匹配项
let g:ycm_seed_identifiers_with_syntax=1	" 语法关键字补全
nnoremap <F2> :YcmForceCompileAndDiagnostics<CR>	"force recomile with syntastic
"nnoremap <leader>lo :lopen<CR>	"open locationlist
"nnoremap <leader>lc :lclose<CR>	"close locationlist
inoremap <leader><leader> <C-x><C-o>
"在注释输入中也能补全
let g:ycm_complete_in_comments = 1
"在字符串输入中也能补全
let g:ycm_complete_in_strings = 1
"注释和字符串中的文字也会被收入补全
let g:ycm_collect_identifiers_from_comments_and_strings = 0
let g:ycm_semantic_triggers =  {
            \ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
            \ }
let g:ycm_filetype_whitelist = { 
            \ "c":1,
            \ "cpp":1, 
            \ "cc":1, 
            \ }


" 私人配置v
echo "(>^.^<)"
set ls=2

"set number and relative number
set nu
"set rnu

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
"autocmd FileType javascript,python,php,c,java,shell,bash,vim,ruby,cpp,json set sw=4
"autocmd FileType javascript,python,php,c,java,shell,bash,vim,ruby,cpp,json set ts=4
"autocmd FileType javascript,python,php,c,java,shell,bash,vim,ruby,cpp,json set sts=4

autocmd FileType scss set iskeyword+=-
autocmd FileType html,css,scss,xml set sw=2
autocmd FileType html,css,scss,xml set ts=2
autocmd FileType html,css,scss,xml set sts=2
autocmd FileType asm set sw=8 | set ts=8 | set sts=8
"autocmd FileType asm set ts=8
"autocmd FileType asm set sts=8

"设置制表符、行尾空格、行结束回显
set list listchars=eol:¬,tab:▸\ ,trail:.,

"自动补全
inoremap {{ {<CR>}<ESC>ko
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

