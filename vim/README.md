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
- 












[Learn Vim Progressively]:http://yannesposito.com/Scratch/en/blog/Learn-Vim-Progressively/
[Vim]:http://www.vim.org/
