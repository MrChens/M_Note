1. 先使用如下命令确定是否已经有`lldbinit`文件存在`cat ~/.lldbinit`
2. 如果没有`lldbinit`，则使用终端执行`touch ~/.lldbinit`或者直接从这里[m_note][m_note]下载现成的`.lldbinit`
3. 如果已经有`.lldbinit`那么将下载下来的`.lldbinit`加到原本`.lldbinit`的后面

现在说明一下文件结构

			├── README.md
			├── douyu
			├── panda
			├── qmtv
			├── .lldbinit
			├── yy
			└── zhanqi


- `.lldbinit`里面负责加载我们预先写好的py脚本
- `douyu`里面存放排查`douyu`泄漏常用的断点
- `panda`里面存放排查`xiongmao`泄漏常用的断点
- `qmtv`里面存放排查`qmtv`泄漏常用的断点
- `yy`里面存放排查`yy`泄漏常用的断点
- `zhanqi`里面存放排查`zhanqi`泄漏常用的断点

后续如果有新的断点增加可以按照对应的文件夹增加对应的脚本

## reference:

[lldb-python-office][lldb python reference]
[lldb-python-demo][lldb-python]


[lldb python reference]:http://lldb.llvm.org/python-reference.html?from=timeline&isappinstalled=0
[lldb-python]:https://github.com/SnowGirls/lldb-python
[m_note]:https://github.com/MrChens/m_note.git
