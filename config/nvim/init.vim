"default setting
set number "显示行号
set cursorline "高亮光标所在行
set ignorecase "搜索的时候忽略大小写

"plug
call plug#begin()
Plug 'scrooloose/nerdtree'
Plug 'morhetz/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'       
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdcommenter'
call plug#end()

"--------------------------------------------------------------------------
"gruvbox
colorscheme gruvbox
"--------------------------------------------------------------------------

"--------------------------------------------------------------------------
"nerdtree
autocmd VimEnter * NERDTree "自动开启Nerdtree
map <F3> :NERDTreeToggle<CR> "打开关闭Nerdtree
let g:NERDTreeMinimalUI = 1 "关闭Nerdtree帮助
let g:NERDTreeShowLineNumbers=1 "是否显示行号
"当NERDTree为剩下的唯一窗口时自动关闭
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"--------------------------------------------------------------------------

"--------------------------------------------------------------------------
"coc
 let g:coc_global_extensions = [
		\ 'coc-prettier',
		\ 'coc-git',
		\]
"使用Tab来完成触发
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')
"--------------------------------------------------------------------------

"--------------------------------------------------------------------------
"vim-airline
let g:airline_theme = 'desertink'  " 主题 desertink luna bubblegum
let g:airline#extensions#tabline#enabled = 1 " 打开tabline功能
let g:airline#extensions#tabline#buffer_idx_mode = 1 "显示tabline序号
let g:airline#extensions#tabline#buffer_idx_format = {
       \ '0': '0 ',
       \ '1': '1 ',
       \ '2': '2 ',
       \ '3': '3 ',
       \ '4': '4 ',
       \ '5': '5 ',
       \ '6': '6 ',
       \ '7': '7 ',
       \ '8': '8 ',
       \ '9': '9 '
       \}
" 设置切换tab的快捷键 <\> + <i> 切换到第i个 tab
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
" 设置切换tab的快捷键 <\> + <-> 切换到前一个 tab
nmap <leader>- <Plug>AirlineSelectPrevTab
" 设置切换tab的快捷键 <\> + <+> 切换到后一个 tab
nmap <leader>+ <Plug>AirlineSelectNextTab
" 设置切换tab的快捷键 <\> + <q> 退出当前的 tab
nmap <leader>q :bp<cr>:bd #<cr>
"--------------------------------------------------------------------------

"--------------------------------------------------------------------------
"nerdcommenter
" 创建默认的映射
let g:NERDCreateDefaultMappings = 1
" 注释加空格
let g:NERDSpaceDelims = 1
" 对经过修饰的多行注释使用紧凑的语法
let g:NERDCompactSexyComs = 1
" 左对齐
let g:NERDDefaultAlign = 'left'
"Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
"Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
"Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
"Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
"检查所有选中的行是否被注释
let g:NERDToggleCheckAllLines = 1
"--------------------------------------------------------------------------

