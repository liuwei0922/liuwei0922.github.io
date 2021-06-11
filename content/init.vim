
"------------------------------------------------------------------------------
"------------------------------vim快捷键设置-----------------------------------
"------------------------------------------------------------------------------
map leader=" "
" 取消搜索后的高亮
nmap <esc> :noh<return><esc>
" ==== 系统剪切板复制粘贴 ====
" v 模式下复制内容到系统剪切板
vmap <Leader>c "+yy
" n 模式下复制一行到系统剪切板
nmap <Leader>c "+yy
" n 模式下粘贴系统剪切板的内容
nmap <Leader>v "+p
" 打开新的标签页
nmap tn :tabnew 
" 查看字数
nmap <Leader>w "%s/./&/g



"------------------------------------------------------------------------------
"------------------------------markdown设置------------------------------------
"------------------------------------------------------------------------------
"设置markdown下的本地leader键
map localleader = "/"

"减少手的移动，映射回车为<C-/>
imap <C-/> <CR>
"标题快捷键
imap ,f <Esc>/<++><CR>:nohlsearch<CR>i<Del><Del><Del><Del>
imap ,1 <ESC>o #<Space><Enter><++><Esc>kA
imap ,2  ##
imap ,3 <ESC>o###<Space><Enter><++><Esc>kA
imap ,4 <ESC>o####<Space><Enter><++><Esc>kA
imap ,5 <ESC>o#####<Space><Enter><++><Esc>kA
" 空格，代码，段落
imap ,c ```<Enter><++><Enter>```<Enter><++><Enter><Esc>4kA
imap ,s ``<++><Esc>F`i
imap ,/ &emsp;<Esc>a
imap ,<CR> <br><Esc>a


"行内公式，由snippets取代，不再用这里的定义，快捷键不变
imap ,e $$<++><Esc>F$i
"也是公式，基本不用
imap ,m $$$$<Enter><++><Esc>khi
"粗体
imap ,b ****<++><Esc>F*hi
"下划线
imap ,u <u></u><++><Esc>F/i<Left>
"斜体
imap ,i **<++><Esc>F*i
"删除线
imap ,d ~~~~<++><Esc>F~hi
"插入时间戳
imap <F2> <br><br><Esc>o> *以下内容更新于<C-R>=strftime('%Y-%m-%d %H:%M:%S')<C-M>*<Down><Esc>o<CR>
"分隔线
imap ,l <ESC>o--------<Enter>



