#VIM 配置

##安装
* 使用[vundle](https://github.com/gmarik/vundle) 管理插件
* Command-T需要`ruby ruby/command-t/extconf.rb;make`
* vim-jsbeautify需要`git submodule update --init --recursive`


##快捷键
* `,t`    呼出command-t 
* `,ff`   格式化文件，支持html、js、css，无文件后缀名使用js格式化
* `ctrl+t` 快速开一个tab
* `ctrl+j`  快速在当前光标处换行
* `,tt`   打开tasklist
* `F6`  粘贴，防止格式化

##问题
* 如果出现`NERDTree: 1 invalid bookmarks were read`, 这样一下`rm -rf * ~/.NERDTreeBookmarks`

