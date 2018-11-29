# Learn Vim Progressively

> TL;DR*: 你想用最快的速度学习vim(目前人类已知最好的文本编辑器)吗? 这是我学习的方式。最低限度你得先学习如何在vim幸存下来，然后慢慢的学习各种tricks。

[Vim][Vim] the Six Billion Dollar editor
> Better, stronger, Faster.

学习[vim][vim]然后他会成为你最后一个使用的文本编辑器。在我知道的范围内没有比它更好用的文本编辑器了。这学起来很可能，但是却难以置信的好用。

我建议你按照下面的4个步骤学习Vim:
- 生存
- 感觉良好
- 感觉更好，更强，更快
- 使用vim大佬

当你走完这里的旅程，你会成为一个vim superstar。

但是在我们开始前，有个小警告。
- 刚开始学习vim是会痛苦的
- 这需要时间
- 这和你学习乐器一样，需要练习
- 别期望在3天内能vim运用的比其他编辑器更有效率
- 事实上这肯定需要2周而不是3天的练习

## 1. 第一级 - 生存

+ 安装[vim][Vim]
+ 启动vim
+ 什么不做！先看。

在一个标准的编辑器中，通过键盘和屏幕是足够你写点什么并看它在屏幕上出现。但是现在不是这样子的，Vim现在是处于 __Normal__ 模式，让我们进入 __Insert__ 模式。按下字母`i`.

你现在感觉好点了，你可以像在标准的编辑器中一样输入文本了。你可以通过按下`ESC`键来返回到 __Normal__ 模式。

现在你知道了如何在 __Insert__ 和 __Normal__ 模式之间切换了.现在，下面这些命令是你在 __Normal__ 模式下生存所需要的.

- `i`-> __Insert__ 模式。按`ESC`回到 __Normal__ 模式
- `x`-> 删除光标覆盖的字符
- `:wq`-> 保存并退出(`:w`保存，`:q`退出)
- `dd`-> 删除并保存当前行到剪切板
- `p`-> 粘贴

推荐:

- `hjkl` ()强烈推荐但不是强制的)->也可使用光标键(←↓↑→).注：`j`看起来像下箭头
- `:help <command>`->显示`<command>`命令相关的帮助。你可以使用`:help`显示通用帮助。

上述5个命令就是你开始是所需要的命令。一旦这些命令你能运用自如(可能1天左右)，你就可以开始挑战第2级了。

但是，关于 __Normal__ 模式有一点需要说明下的。在标准的编辑器中，当你需要copy一些东西的时候，你需要使用`Ctrl`键(通常是`Ctrl-c`)。当你按下`Ctrl`时，键盘上其他键的功能就不一样了，比如`c`不再是`c`而是`copy`。在vim中的 __Normal__ 模式,就相当于vim自动帮你按了`Ctrl`键。

关于标记要说的:
- 下面的文字，`<C-λ>`代表的是`<Ctrl-λ>`
- 命令行以`:`开头，并需要以回车键结尾的。例如:当我写了`:q`，意味着输入`:q`后需要按一下回车键。


## 2.第二级-感觉良好
你已经知道在vim生存下来所需的命令了。现在是时候再学一些命令了。下面是我的建议:

### 各种插入的方式:
- `a`-> 在光标的后面插入
- `o`-> 在当前行的后面插入一个新行
- `O`-> 在当前行的前面插入一个新行
- `cw`-> 删除当前光标所在的单词到这个单词的结尾并粘贴到剪切板

### 基础的光标移动:
- `0`-> 将光标从当位置移动到行头
- `^`-> 到本行第一个不是blank字符的位置(blank字符指空格，tab，换行，回车等)
- `$`-> 将光标从当前位置移动到行尾
- `g_`-> 到本行最后一个不是blank字符的位置
- `/pattern`-> 搜索`pattern`字符串

### 拷贝/粘贴:
- `P`-> 在当前位置的前面粘贴，`p`在当前位置的后面粘贴
- `yy`-> 拷贝当前行，相当于`ddP`

### 撤销/重做:
- `u`-> 撤销
- `<C-r>`-> 重做

### 加载/保存/退出/修改文件(Buffer)
- `:e <path/to/file>`-> 打开一个文件
- `:w`-> 保存
- `:saveas <path/to/file>`-> 保存文件到`<path/to/file>`
- `:x`,`ZZ`或`:wq`-> 保存并退出(`:x`仅在需要时保存)
- `:q!`-> 退出不保存.`:qa!`即使有修改了隐藏的缓冲区。
- `:bn`(区别于`:bp`)-> 显示下一个文件，`:bp`显示上一个文件。在你同时打开多个文件的时候有用。

花点时间在上面的这些命令。一旦你掌握了，你就可以做你在其他编辑器上做的事情了。你可能还是觉得vim有些笨拙。但请跟着我
进阶到下一个等级，你将会看到为什么vim值得这些额外的工作。

## 3.第三级-更好，更强，更快
祝贺你走到这一步！ 现在我们可以从有趣的东西开始。 在第3级，我们只讨论与旧的vi编辑器兼容的命令。

### 3.1 更好
让我们看看vim是如何重复你的工作:
- `.`-> (点)将会重复最后一个命令
- `N<command>`-> 将会重复`command`命令`N`次。

以下是一些例子，打开文件并输入:
+ `2dd`-> 删除2行
+ `3p`-> 粘贴文本3次
+ `100idesu [ESC]`-> 会写下”desu desu desu desu desu desu desu desu desu desu desu desu desu desu desu desu desu desu desu desu desu desu desu desu desu desu desu desu desu desu desu desu desu desu desu desu desu desu desu desu desu desu desu desu desu desu desu desu desu desu desu desu desu desu desu desu desu desu desu desu desu desu desu desu desu desu desu desu desu desu desu desu desu desu desu desu desu desu desu desu desu desu desu desu desu desu desu desu desu desu desu desu desu desu desu desu desu desu desu desu”
+ `.`-> 重复上一个命令，会再写100个"desu"
+ `3.`重复3次“desu”(注意不是300次，vim真聪明)

### 3.2 更强
知道如何使用vim让光标移动的更有效率，是很重要的，别跳过这个这节。

- N`G`-> 跳到第N行的行头
- `gg`-> 相当于`1G`的快捷键:跳到第一行的行头。
- `G`-> 跳到最后一行的行头


### 3.3 更快




[Learn Vim Progressively]:http://yannesposito.com/Scratch/en/blog/Learn-Vim-Progressively/
[Vim]:http://www.vim.org/
