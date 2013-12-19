# VIM 配置

## 安装
* 使用[vundle](https://github.com/gmarik/vundle) 管理插件
* vim-jsbeautify需要`git submodule update --init --recursive`
* jsctags安装`git clone https://github.com/mozilla/doctorjs.git; make`

## 特性
* % 支持html的匹配


## 快捷键
* `<Leader>ff`   格式化文件，支持html、js、css，无文件后缀名使用js格式化

* `<Leader>e`   打开NERDTree 
* `<c-e>`   关闭NERDTree 

* `<c-p>`   打开快速搜索  

* `<Leader>c<space>`   切换选择区域的注释 
* `<Leader>cm`   选择区域多行注释 

* `<leader>gs` :Gstatus
* `<leader>gc` :Gcommit
* `<leader>gd` :Gdiff
* `<leader>gb` :Gblame
* `<leader>gl` :Glog
* `<leader>gp` :Git push

* `ctrl+t` 快速开一个tab
* `ctrl+j`  快速在当前光标处换行
* `F6`  粘贴，防止格式化

* `,,w` 进入快速定位模式

* `<c-y>,` 展开zendcoding

* `cs'<p>` 把配对的'换为<p>

*`ctrl-n` 普通模式下选中多个同样的字符，然后处理

*`:SessionList` 查看保存的session

*`:UndotreeToggle` 查看保存的session

*`:help Tabular` 行与行之间字符按特定的符号对齐对齐


## vim diff 快捷键
* `]c` 下一个差异处
* `[c` 上一个差异处
* `do` diff get, 从另一个窗口把差异补过来
* `dp` diff put, 把差异放到另一个窗口里
* `:diffupdate` 更新修改后的差异

## 问题
* 如果出现`NERDTree: 1 invalid bookmarks were read`, 这样一下`rm -rf * ~/.NERDTreeBookmarks`

