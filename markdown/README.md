---
layout: post
title: "Markdown语法说明"
date: 2015-04-02 22:25:31 +0800
comments: true
categories: 杂七杂八(Mess)
---

<div id="top"></div>

# ```前言:```		
> markdown的使用在网上已经有很多了，我这边主要是弄些自己写Blog的时候需要的语法。


<!-- more -->


## 特殊字符自动转换
如果要在文档中插入一个版权符号©，可以像下面这样写：
	&copy;
## 换行
如果想在markdown中换行，在插入处按入2个空格然后回车就可以。
## 标题
如果想加标题的话，markdonw支持2种标题的语法，类[Setext](http://docutils.sourceforge.net/mirror/setext.html)和类[atx](http://www.aaronsw.com/2002/atx/)形式。例如：
	Setext方式：3个或者更多-(或者=)，必须单独一行，可含空格  
	`小标题`  
	`---`  
	`大标题`  
	`===`  
下面是效果图  
大标题  
===
小标题
---

	Atx方式：
	#一级标题
	##二级标题
	###三级标题
	####四级标题
	#####五级标题
	######六级标题

# 一级标题
## 二级标题
### 三级标题
#### 四级标题
##### 五级标题
###### 六级标题

## 引用
	`翻译成html就是<blockquote></blockquote>`s  
	`> 引用1
	>> 引用2`

> 我是引用1哦！  
>> 我是引用2哦！

## 强调
星号与下划线都可以，单时斜体，双是粗体，符号可跨行，符号可加空格

				**一个人来到农林大学**  
				*我努力的放空自己  
				试着挂科*
				__结果真的挂科了__   
				_果然不作死就不会死_


**一个人来到农林大学**  
*我努力的放空自己  
试着挂科*  
__结果真的挂科了__   
_果然不作死就不会死_

## 无序列表
		符号之后的空格不能少，-，+，*效果一样，但不能混合使用，因混合是嵌套列表，内容可超长
		- 无序列表
		- 无序列表
		- 无序列表
		- 无序列表：我很长。我也很长！那比一比啊？比就比！我有这么长，你有我长吗？我有这么这么长！好吧，你赢了！

- 无序列表
- 无序列表
- 无序列表
- 无序列表

## 有序列表
		数字不能省略但可无序，点号之后的空格不能少
		1. 有序列表
		2. 有序列表
		3. 有序列表
		8. 有序列表
1. 有序列表
2. 有序列表
3. 有序列表
8. 有序列表

## 嵌套列表
	-+*可循环使用，但符号之后的空格不能少，符号之前的空格也不能少
	- 嵌套列表
		+ 嵌套列表
		+ 嵌套列表
			- 嵌套列表
				* 嵌套列表
	- 嵌套列表
- 嵌套列表
	+ 嵌套列表
	+ 嵌套列表
		- 嵌套列表
		* 嵌套列表
- 嵌套列表  

## 文字超链：InLine方式
	Tooltips可省略
	[Mrchens](http://mrchens.github.io “MrchensBlog”)
[Mrchens](http://mrchens.github.io “MrchensBlog”)

## 图片超链
	多个感叹号，Tooltips可省略，要设置大小只能借助HTML标记
	![Mrchens Blog](http://mrchens.github.io/images/avatar.jpg "Mrchens Blog")

![Mrchens Blog](http://mrchens.github.io/images/avatar.jpg "Mrchens Blog")


## 索引超链：Reference方式

	索引，1 2可以是任意字符
	[Mrchens][1]
	![Mrchens Photo][2]

	[1]:http://mrchens.github.io
	[2]:http://mrchens.github.io/images/avatar.jpg

[Mrchens][1]
![Mrchens Photo][2]

[1]:http://mrchens.github.io
[2]:http://mrchens.github.io/images/avatar.jpg

## 自动链接
	尖括号
	<http://mrchens.github.io>
	<http://www.weibo.com/325751212>
<http://mrchens.github.io>  
<http://www.weibo.com/325751212>

## 代码
- 行内代码  
	在第一行后指定编程语言，也可以不指定
		```scala
  			val s = "hello Markdown"
  			println( s )
		```
	```scala
  		val s = "hello Markdown"
  		println( s )
	```

- 段落代码
	每行文字前加4个空格或者1个Tab

		val s = "hello Markdown"
		println( s )
- hexo
	可指定编程语言，『』代表左右大括号

		『% codeblock [title] [lang:language] [url] [link text] %』
		code snippet
		『% endcodeblock %』

## 注释

	<!-- 注释 --->

## 转义字符

	Markdown中的转义字符为\，转义的有：
	\\ 反斜杠
	\` 反引号
	\* 星号
	\_ 下划线
	\{\} 大括号
	\[\] 中括号
	\(\) 小括号
	\# 井号
	\+ 加号
	\- 减号
	\. 英文句号
	\! 感叹号

## 表格
	| Tables        | Are           | Cool  |
	| ------------- |:-------------:| -----:|
	| col 3 is      | right-aligned | $1600 |
	| col 2 is      | centered      |   $12 |
	| zebra stripes | are neat      |    $1 |

	| Tables        | Are           | Cool  |
	| ------------- |:-------------:| -----:|
	| col 3 is      | right-aligned | $1600 |
	| col 2 is      | centered      |   $12 |
	| zebra stripes | are neat      |    $1 |

| Tables        | Are           | Cool  |
| ------------- |:-------------:| -----:|
| col 3 is      | right-aligned | $1600 |
| col 2 is      | centered      |   $12 |
| zebra stripes | are neat      |    $1 |

	dog | bird | cat
	----|------|----
	foo | foo  | foo
	bar | bar  | bar
	baz | baz  | baz

dog | bird | cat
----|------|----
foo | foo  | foo
bar | bar  | bar
baz | baz  | baz

## 页面间跳转/锚点
  1. 先设置好锚点:`<div id="top"></div>`
  2. 设置跳转链接:`[跳到顶部](#top)`
```
<div id="top"></div>
[跳到顶部](#top)
```

[跳到顶部](#top)

## 折叠

```
<details>
  <summary>我是折叠</summary>
    <pre><code>
      hello
    </code></pre>
</details>
```

<details>
  <summary>我是折叠</summary>
    <pre><code>
      hello
    </code></pre>
</details>

## 嵌入视频链接：

	<video id="video" controls="" preload="none" poster="http://media.w3.org/2010/05/sintel/poster.png">
				<source id="mp4" src="http://media.w3.org/2010/05/sintel/trailer.mp4" type="video/mp4">
				<source id="webm" src="http://media.w3.org/2010/05/sintel/trailer.webm" type="video/webm">
				<source id="ogv" src="http://media.w3.org/2010/05/sintel/trailer.ogv" type="video/ogg">
				<p>Your user agent does not support the HTML5 Video element.</p>
			</video>

 <video id="video" controls="" preload="none" poster="http://media.w3.org/2010/05/sintel/poster.png">
      <source id="mp4" src="http://media.w3.org/2010/05/sintel/trailer.mp4" type="video/mp4">
      <source id="webm" src="http://media.w3.org/2010/05/sintel/trailer.webm" type="video/webm">
      <source id="ogv" src="http://media.w3.org/2010/05/sintel/trailer.ogv" type="video/ogg">
      <p>Your user agent does not support the HTML5 Video element.</p>
    </video>

_以下是我参考的资料_


[markdown简明语法][markdown简明语法]  
[Markdown: Syntax][Markdown: Syntax]  
[Markdown 语法说明 (简体中文版)][Markdown 语法说明 (简体中文版)]  
[献给写作者的 Markdown 新手指南][献给写作者的 Markdown 新手指南]

[markdown简明语法]:http://ibruce.info/2013/11/26/markdown/
[Markdown: Syntax]:http://www.ituring.com.cn/article/504
[Markdown 语法说明 (简体中文版)]:http://wowubuntu.com/markdown/#backslash
[献给写作者的 Markdown 新手指南]:http://www.jianshu.com/p/q81RER
