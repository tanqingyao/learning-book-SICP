#SICP题解

**Part1**
begin: 2019-11-07 17:38:17
end:   2019-11-12 13:07:20
##chap1
### 1.1
### 1.2过程与其产生的计算
#### 1.2.4求幂
两个转化过程的练习
1. 线性递归计算过程——线性迭代
2. 线性递归计算过程——O(n)到O(logn)
3. 两者的结合
- 1.16
- 1.17
- 1.18
#### 1.2.6素数检测
- 1.25 每次递归计算时的计算量[题解](https://sicp.readthedocs.io/en/latest/chp1/25.html)

##chap2
### 2.1导引
#### 2.1.2
- 2.3 抽象屏障的建立，对照P59的图，第二层和第三层不同，但第四层用的第三层方法不变，而不是在第二层进行转化[题解](https://sicp.readthedocs.io/en/latest/chp2/3.html)
- 2.6 丘奇计算，一开始没看懂什么意思，被多层lambda绕晕了，其实就是用函数调用表示数，[解释](https://blog.csdn.net/keyboardOTA/article/details/39439363)

#### 2.1.4

- 2.14-2.15-2.16 课后习题更像是数学问题，[题解](http://community.schemewiki.org/?sicp-ex-2.14-2.15-2.16)

- 2.30 必要时抽象出辅助方法


**Part2**
begin： 2019-11-19 09:14:41
end  ： 2019-11-27 15:22:47

- 2.43 网上看的一份解答不太对，交换嵌套顺序之后，对于每次递归，都要计算boardsize次，因为`(enumerate-interval 1 board-size)`在`(queen-cols (- k 1))`外面，而交换顺序之前每次的`(queen-cols (- k 1))`都是被filter过的。
可以理解为2.42中每次`(queen-cols (- k 1))`就filter一次，减掉了不合规定的情况，而交换之后`(queen-cols (- k 1))`都得等前面映射完，全部情况都扫描一遍了再做filter。
当然一个情况大概为$O(n!)$,后一个为$O(n^2)$


- 2.57 带点尾部记法P69
- 2.58 认为不能，但看有[解答](http://community.schemewiki.org/?sicp-ex-2.58),复制了验证了一下，没有跑成功
; 这里的表达式不能运行，因为对于输入，求导程序并没有优先级，每步计算都是把一个操作符号左右两边当做operator，
; 比如第一步计算'*左边'x 和'(y + y * z)的乘积到导数
; 只修改谓词，选择函数，构造函数不能正常工作此时添加计算优先级，应该修改的判断为'*操作符优先计算，即'x和(car '(y + y * z))计算

- 2.73 一开始不能理解，为什么构造函数需要打上tag，其实是为了选择函数根据不同的tag做选择。后面改写了install-sum-package，做了一测试`(deriv '(+ x 3) 'x)`发现能运行，有点不太明白好像不需要tag，想了蛮久（其实product包也已经改了，只是没测试），后面改写exponet包才突然意识到它需要用到`make-product`,测试了一下`(deriv '(* x y) 'x)`，不打tag外部引用果然不行。

- 2.74 (attach-tag company-name, content)。(put op company-name),(get op company-name)
- 2.75 消息传递里面就是面向对象的思想，表达简洁，威力很强大
- 2.76 总结了前面三个策略，带显示分派的通用型操作，数据导向，消息传递。带显示分派的通用型操作对于类型和操作完全分开，比较复杂，不可取；数据导向则是基于类型分派；消息传递则是基于操作分派。根据不同的情况选择不同分派策略

- 2.79 花了很多时间debug
    1. `attach-tag`过程对于多个参数要注意构造，获得内容不能用cdr
    2. `(load ...pakage)`加载包不能乱，先全部load，然后在install
    3. `P124-install-rectangular-package.scm`中，real-part和imag-part的通用选择器，当构造器能带标签选择，选择器也应当标签选择

- 2.81 完成

**Part3** 第二章未完成,git管理
begin: 2020-01-04 11:03:35
