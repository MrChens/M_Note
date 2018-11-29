# Learn Vim Progressively

> TL;DR*: 你想用最快的速度学习vim(目前人类已知最好的文本编辑器)吗? 这是我学习的方式。最低限度你得先学习如何在vim幸存下来，然后慢慢的学习各种tricks。

[Vim][Vim] the Six Billion Dollar editor
> Better, stronger, Faster.

学习[vim][vim]然后他会成为你最后一个使用的文本编辑器。在我知道的范围内没有比它更好用的文本编辑器了。这学起来很可能，但是却难以置信的好用。

我建议你按照下面的4个步骤学习Vim:
- 生存
- 感觉良好
- 感觉更好，更强，更快
- 成为vim大佬

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
- 按单词移动:
  - `w`-> 到下一个单词的开头
  - `e`-> 到单词的结尾
  默认情况下一个单词是由字母，下划线组成。如果你需要考虑不是这种的，你需要使用大写的E和W:
  - `W`-> 到下一个单词的开头
  - `E`-> 到单词的结尾
  ![word_moves][word_moves]

现在我们来说说更有效率的光标移动:
- `%`-> 移动到相匹配的`(`,`{`,`[`。
- `*`(区别于`#`)-> 从当前光标所在的单词跳到下一个同样的单词(`*`是下一个，`#`是上一个)

相信我，上面这3个命令会像金子一样闪闪发光的.

### 3.3 更快
还记得vi移动的重要性么？下面就是原因。许多命令都可以按照下面的格式使用:
`<start position><command><end position>`

比如:`0y$`意味着:
- `0`-> 从这行的开头
- `y`-> 开始复制(yank from here)
- `$`-> 一直到这行的结尾

我通常也用`ye`，从当前位置到本单词的最后一个字符。

你也可以使用`y2/foo`来拷贝光标当前的位置到第二个`foo`之间的字符串。

对于`y`(yank)适用的规则同样适用于`d`(删除，delete) ,`v`(可视化，visual),`gU`(变大写，uppercase),`gu`(变小写，lowercase)等...

## 4.第四级-成为vim大佬
当你经受住前面所有命令的洗礼，你就可以很舒适地使用vim了。但是，现在我们还有杀手级的功能。其中的一些特性就是我开始使用vim的原因。

### 4.1 在当前行移动光标:`0` `^` `$` `g_` `f` `F` `t` `T` `,` `;`
- `0`-> 到行头
- `^`-> 到本行的第一个非blank字符
- `$`-> 到行尾
- `g_`-> 到本行最后个不是blank字符
- `fa`-> 到下一个为a的字符处，`,`查找上一个`a`，`;`下个`a`。(此处的`a`可以为任意个字符)
- `t,`-> 到逗号前的第一个字符。(此处的`,`可以为任意个字符)
- `3fa`-> 在当前行找到第三个出现的`a`。(此处的`a`可以为任意个字符)
- `F`和`T`-> 与`f`和`t`一样的，只不过是相反方向的。
  ![line_moves][line_moves]
有个很有用的tips：`dt"`-> 删除路上的一切东西直到遇到`"`.

### 4.2 区域选择`<action>a<object>`或`<action>i<object>`
虽然下面这些命令只能在 __visual__ 模式下使用。但是它们是非常强大的。它们的主要模式是:

`<action>a<object>`和`<action>i<object>`
- `action`是可以为任何动作的，比如`d`删除(delete), `y`复制 (yank), v可视模型选择 (select in visual mode)
- `object`可以是:`w`一个单词，`W`一个以blank分隔的单词,`s`一个句子,`p`一个段落.也可以是特殊的字符 `"`, `'`, `)`, `}`, `]`。

假设光标在一串字符`(map (+) ("foo"))`的第一个`o`上.

- `vi"`-> 会选择`foo`
- `va"`-> 会选择`"foo"`
- `vi)`-> 会选择`"foo"`
- `va)`-> 会选择`("foo")`
- `v2i)`-> 会选择`map (+) ("foo")`
- `v2a)`-> 会选择`(map (+) ("foo"))`

![textobjects][textobjects]

### 4.3 选择矩形块:`<C-v>`
当注释许多行代码的时候矩形块是很有用的。

通常的操作是:`0<C-v><C-d>I-- [ESC]`

- `^`-> 到行头第一个不是blank的字符
- `<C-v>`-> 开始块的选择
- `<C-d>`-> 向下移动(也可以使用`jjj`或者`%`，或者其他的来移动光标)
- `I-- [ESC]`-> 插入`--`来注释每一行

![rectangular-blocks.gif][rectangular-blocks.gif]

Note: in Windows you might have to use <C-q> instead of <C-v> if your clipboard is not empty.

### 4.4 自动补全:`<C-n>`和`<C-p>`
在 __Insert__ 模式下，你可以输入一个词的开头，然后按`<C-p>`,巴啦啦小魔仙...
![completion.gif][completion.gif]

### 4.5 宏:`qa`操作`q`,`@a`,`@@`
- `qa`会把你的操作记录在寄存器`a`.
- 然后`@a`会重放你录制在寄存器`a`中的宏.
- `@@`是用来重放最后一次录制的宏的快捷键

例子:

在仅包含一个数字`1`的行上，输入如下命令:
- `qaYp<C-a>q`->
  - `qa`开始录制
  - `Yp`复制这行
  - `<C-a>` 数字加1(increment the number)
  - `q` 停止录制
- `@a`-> 在`1`下面写`2`
- `@@`-> 在`2`下面写`3`
- 现在做`100@@`将会创建从一系列递增的数字一直到`103`行
![macros.gif][macros.gif]

### 4.6 可视化选择:`v`,`V`,`<C-v>`
我们看过`<C-v>`的示例，可以是使用`v`和`V`。一旦我们选好了后，就可以:
- `J`-> 把所有的行连接起来
- `<`(相对应的`>`)-> 左右缩进
- `=`-> 自动缩进
![autoindent.gif][autoindent.gif]

在所有被选择的行后面加点料:

- `<C-v>`
- 去所想要的行(`jjj`或者`<C-d>`或者`/pattern`或者`%`等等)
- `$` 到行尾
- `A`，写入文字,按`ESC`
![append-to-many-lines.gif][append-to-many-lines.gif]


### 4.7 拆分:`:split` 和`:vsplit`
下面是十分重要的命令,你应该先看看`:help split`

- `:split`-> 创建一个分屏(`:vsplit` 创建一个垂直分屏)
- `<C-w><dir>`: `dir`是`hjkl`或者←↓↑→中的一个，用来改变分屏方向
- `<C-w>_`(相对应的`<C-w>|`):最大化分屏尺寸（相对应垂直分屏）
- `<C-w>+`(相对应的`<C-w>-`):增加分屏尺寸(相对应的减少尺寸)
![split.gif][split.gif]

### 5. 总结

上面90%的命令我每天都会使用到。 我建议你每天学习不超过一到两个新命令。 两到三周后，你会从你的手中感受到vim的力量。

Vim的学习更多的是训练而不是简单的记忆。 幸运的是，vim自带有一些非常好的工具和优秀的文档。 运行vimtutor直到您熟悉大多数基本命令。 此外，您应该仔细阅读这个页`:help usr_02.txt`。

然后，您将学习到`!`，目录，寄存器，插件等许多其他的功能。 学习vim就像学习钢琴一样，一切都应该没问题。

[原文地址][Learn Vim Progressively]

[Learn Vim Progressively]:http://yannesposito.com/Scratch/en/blog/Learn-Vim-Progressively/
[Vim]:http://www.vim.org/
[word_moves]:https://github.com/MrChens/m_note/tree/master/vim/word_moves.jpg
[line_moves]:https://github.com/MrChens/m_note/tree/master/vim/line_moves.jpg
[textobjects]:https://github.com/MrChens/m_note/tree/master/vim/textobjects.jpg
[rectangular-blocks.gif]:https://github.com/MrChens/m_note/tree/master/vim/rectangular-blocks.gif
[completion.gif]:https://github.com/MrChens/m_note/tree/master/vim/completion.gif
[macros.gif]:https://github.com/MrChens/m_note/tree/master/vim/macros.gif
[autoindent.gif]:https://github.com/MrChens/m_note/tree/master/vim/autoindent.gif
[append-to-many-lines.gif]:https://github.com/MrChens/m_note/tree/master/vim/append-to-many-lines.gif
[split.gif]:https://github.com/MrChens/m_note/tree/master/vim/split.gif
