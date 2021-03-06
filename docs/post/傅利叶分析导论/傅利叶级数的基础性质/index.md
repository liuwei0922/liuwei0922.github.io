对于傅利叶级数的一些性质的讨论，从一些特例到卷积再到“good kernel”。

## 前置知识

### 傅利叶级数的形式
对于一个函数（以下均为黎曼可积），可以将其展开为以下形式
$$\sum_{n=-\infty}^{\infty}c_ne^{inx}$$
其中的系数是$c_n=\frac{1}{2\pi}\int_{-\pi}^{\pi}f(x)e^{-inx}dx$。

对于其前$N$项和，有
$$S_N(x)=\sum_{n=-\infty}^{N}c_ne^{inx}$$
由于这是一个有限的求和，所以积分号和求和号可以换位置，得到
$$S_N(x)= \frac{1}{2\pi} \int D_N(x-y)f(y)dy $$
其中，$D_N(x)=\sum\limits_{n=-N}^{N}e^{inx}$。

### 讨论的函数
对于之后讨论的函数的分析。我们选取的函数不一定是实数域下的，也会有复数域下的。

#### 任意处连续的函数
在一个区间内，该函数是连续的，不间断的，没有间断点

#### 逐点连续的函数
在一个区间内，该函数是有界的，在其中的某些点处出现间断。

#### 黎曼可积函数
黎曼可积函数是有界的，可积分的，或许存在间断点，但是间断点作用可以忽略。
之后的讨论中，所使用的函数都是黎曼可积函数。

#### 周期函数
对于复数域下的一个复变函数$F$，定义在单位圆上。对于单位圆上的点，
我们可以用$e^{i\theta}$来表述，其中$\theta$是实数，令函数
$$f(\theta)=F(e^{i\theta})$$
此时，函数$f$是一个周期为$2\pi$的实函数，对于$F$的性质，$f$一样都有，
如果$F$是可积和可微的，则$f$也是可积和可微的。
但是该式也对$f$存在限制，即$f$必须是在任意区间的两个端点处的取值是相同的，否则该映射是不成立的。

## 傅利叶级数的定义
对于一个在区间$[a,b]$上的长度为$L$的可积函数，都可以对其有傅利叶级数的展开，其展开系数是
$$\hat{f}(n)= \frac{1}{L}\int_a^bf(x)e^{ { -2\pi inx }{/L} }dx,\quad n\in\mathbb{Z}$$
此时，傅利叶级数的展开式（并没有说明其收敛性）为：
$$f\sim\sum_{n=-\infty}^{\infty}\hat{f}(n)e^{2\pi inx/L}$$

之后我们考虑的基本都是周期为$2\pi$的函数。所以上式可以简化为[一开始的形式](#傅利叶级数的形式)。

对于傅利叶级数，其显然是三角级数的一个例子，对于有限项的三角级数，称作三角多项式，其最高次幂的次数就是其阶数。

对于傅利叶级数的前$N$项和，如果$N\rightarrow\infty$，此时傅利叶级数就是其极限。

**这个地方并没有证明，对于傅利叶级数，其一定收敛于其原函数，也是可能不收敛的。**
### 一些函数的傅利叶级数
对于之后需要用到的一些展开式，将其结果放在这里，如果不想看可以到用的时候再回顾。

#### $f(\theta)=\theta$
计算过程：
$$
\begin{aligned}
\hat{f}(n) &= \frac{1}{2\pi}\int_{-\pi}^{\pi}\theta e^{-in\theta}d\theta \\
&= \frac{1}{2\pi}\big[- \frac{\theta}{in}e^{-in\theta}\big]^{\pi}_{\pi}+ \frac{1}{2\pi in}\int_{-\pi}^{\pi}e^{-in\theta}d\theta \\
&= \frac{(-1)^{n+1}}{in}
\end{aligned}
$$
当$n$等于零时，有
$$\hat{f}(0)= \frac{1}{2\pi}\int^{\pi}_{-\pi}\theta d\theta=0$$
因此，其傅利叶展开式为：
$$f(\theta)\sim \sum_{n \neq 0} \frac{(-1)^{n+1}}{in}e^{in\theta}=2\sum^{\infty}_{n=1}(-1)^{n+1} \frac{\sin n\theta}{n}$$
其中有$i=e^{i\pi /2}$。

#### Dirichlet kernel
定义$N^{th}$Dirichlet kernel为
$$D_N(x)= \sum_{n=-N}^{N}e^{inx}$$
显然其是一个三角多项式，而不是级数。它的傅利叶展开式为：
$$D_N(x)= \frac{\sin((N+ \frac{1}{2})x)}{\sin (x/2)}$$
计算过程：
假设它是由两部分组成的，一部分是$\sum\limits^{N}_{n=0}w^n$，另一部分是$\sum^{-1}_{n=-N}w^n$，其中的$w=e^{ix}$。
然后使用等比级数的求和公式，可以得到
$$ \frac{1-w^{N+1}}{1-w}\quad 和 \frac{w^{-N}-1}{1-w}$$
然后求和，代入欧拉公式，就可以得到结果了。

#### Poisson kernel
通过一个绝对收敛和一致收敛的级数，定义一个$\theta\in[-\pi,\pi]$，以及$0\le r<1$的函数$P_r(\theta)$
$$P_r(\theta)=\sum_{n=-\infty}^{\infty}r^{|n|}e^{inx}$$
对于它的傅利叶系数，因为该级数是绝对收敛和一致收敛的，所以我们可以互换求和和积分的顺序，
得到其傅利叶系数是$r^{|n|}$。

我们也可以找到该级数的收敛的函数，结果是
$$P_r(\theta)= \frac{1-r^2}{1-2r\cos\theta+r^2}$$
事实上，和上面导出结果类似，我们可以取$w=re^{i\theta}$，有
$$P_r(\theta)=\sum^{\infty}_{n=0}w^n+\sum^{\infty}_{n=1}w^{-n}$$
计算即可得到上式。

### 傅利叶级数的唯一性
如果我们假定对于一个傅利叶级数收敛到$f$，我们就有理由推断，对于该函数，
它被它的傅利叶级数的系数唯一确定。这个可以导出这个推论，如果$f$和$g$有同样的傅利叶系数，此时$f$和$g$是必然相等的，
即$f-g=0$。上面也可以表述为，对于$\hat{f}(n)=0$在所有的$n\in\mathbb{Z}$，都有$f=0$成立。

对于上面的讨论，有
>**定理：**
>**Suppose that $f$ is an intergration function on the circle with $\hat{f}(n)=0$ for all $n\in\mathbb{Z}$.
>Then $f(\theta_0)=0$ whenever $f$ is continuous at the point $\theta_0$**

就是对于一个可积的函数，当其傅利叶系数全部为零时，该函数必然是零。

[证明过程](/post/傅利叶分析导论/Theorem2.1的证明)在此文中，这里不再细写。

可以得到一些相关的推论。
>**推论1：If $f$ is continuous on the circle and $\hat{f}{n}=0$ for all $n\in\mathbb{Z}$, then $f=0$**.
>
>**推论2：Suppose that $f$ is a continuous function on the circle and that the
>Fourier series of $f$ is absolutely convergent,
>$\sum^{\infty}_{n=-\infty}|\hat{f}(n)|<\infty$. Then, the Fourier series
>converges uniformly to $f$, that is ,**
>$$\lim_{N\rightarrow\infty}S_N(f)(\theta)=f(\theta) $$ 
>**uniformly in $\theta$.**

这里只看推论2的证明。

证明：
对于一个连续函数的序列如果一致收敛到一个函数，则它们收敛的极限也必然是连续的。
又由[Weierstrass判别法](https://zh.wikipedia.org/wiki/%E9%AD%8F%E5%B0%94%E6%96%BD%E7%89%B9%E6%8B%89%E6%96%AF%E5%88%A4%E5%88%AB%E6%B3%95)
可以得到，对于$f$的傅利叶级数是绝对收敛且一致收敛的。
此时我们定义一个在圆周上的连续函数
$$g(\theta)=\sum_{n=-\infty}^{\infty}\hat{f}(n)e^{in\theta}
=\lim_{N\rightarrow\infty}\sum_{n=-N}^{N}\hat{f}(n)e^{in\theta}$$
显然，对于$g(\theta)$的傅利叶系数，显然是$\hat{f}(n)$，因此，我们对于函数$f-g$使用推论1，即可得到结果。
>**推论3：Suppose that $f$ is a twice continuously differentiable function on
>the circle. Then**
>$$\hat{f}(n)=O(1/|n|^2) \qquad as\,|n|\rightarrow\infty$$
>**so that the Fourier series of $f$ converges absolutely and uniformly to $f$**

其中的$\hat{f}(n)=O(1/|n|^2)$意思是$\hat{f}(n)\le C/|n|^2$。
该式描述的是一个函数的光滑程度，对于高阶导数，有类似的结论。

证明：
$$
\begin{aligned}
2\pi\hat{f}(n) &= \int_{0}^{2\pi}f(\theta)e^{-in\theta}d\theta \\
&=\left[f(\theta)\cdot\frac{-e^{-in\theta}}{in}\right]^{2\pi}_0+\frac{1}{in}\int_{0}^{2\pi}f'(\theta)e^{-in\theta}d\theta \\
&= \frac{1}{in}\int_{0}^{2\pi}f'(\theta)e^{-in\theta}d\theta \\
&= \frac{1}{in}\left[f'(\theta)\cdot\frac{-e^{-in\theta}}{in}\right]^{2\pi}_{0}+\frac{1}{(in)^2}\int_{0}^{2\pi}f''(\theta)e^{-in\theta}d\theta \\
&= \frac{-1}{n^2}\int_{0}^{2\pi}f''(\theta)e^{-in\theta}d\theta
\end{aligned}
$$
其中，$\int_{0}^{2\pi}|f''(\theta)|d\theta$是一个小于某一常数$C$的值。
此时，上式得证。其中，$C$是一个独立于$n$的一个量。

在这个的证明过程中，可以得到一些相关的推论。
>$$\hat{f'}(n)=in\hat{f}(n)$$
>$$\hat{f''}(n)=(in)^2\hat{f}(n)$$
>之后的高阶导数有类似的结论。

与上面的推论类似，有一个更强的条件判断傅利叶级数的收敛。
>如果函数$f$满足$H\ddot{o}lder\; condition$,即对于$\alpha>\frac{1}{2}$有
>$$\sup\limits_{\theta}|f(\theta+t)-f(\theta)|\le A|t|^{\alpha} \quad for \; all\; t.$$

## 卷积
为方便起见，这里定义的卷积是这个样子的。
$$(f*g)(x)= \frac{1}{2\pi}\int_{-\pi}^{\pi}f(y)g(x-y)dy$$
其中，$f$及$g$都是定义在$\mathbb{R}$上的以$2\pi$为周期的可积函数。

对于卷积，可以将其认为是一种带权重的平均。显然，对于将$x$当成一个常数时，
$g(x-y)$可以看做在y点的某个权值。

对于傅利叶级数和卷积的联系：
当我们的卷积定义成这样，可以得到
$$
\begin{aligned}
S_N(f)(x) &=\sum^{N}_{n=-N}\hat{f}(n)e^{inx} \\
&= \sum_{n=-N}^{N}\left(\frac{1}{2\pi}\int_{-\pi}^{\pi}f(y)e^{-iny}dy\right)e^{inx} \\
&= \frac{1}{2\pi}\int_{-\pi}^{\pi}f(y)\sum_{n=-N}^{N}e^{in(x-y)}dy \\
&= (f*D_N)(x)
\end{aligned}
$$
其中$D_N(x)=\sum\limits_{n=-N}^{N}e^{inx}$,即$N^{th}$ Dirichlet kernel。

### 卷积的一些性质
>**1. $f*(g+h)=(f*g)+(f*h)$**
>
>**2. $(cf)*g=c(f*g)=f*(cg)$**
>
>**3. $f*g=g*f$**
>
>**4. $(f*g)*h=f*(g*h)$**
>
>**5. $f*g$必定连续**
>
>**6. $\widehat{f*g}(n)=\hat{f}(n)\hat{g}(n)$**

前两条是卷积的线性性质，第三条是交换律，第四条是结合律，第五条是卷积函数的性质，第六条是与傅利叶系数的关系。
前几条都是十分容易证明的，这里重点证明第五条和第六条。

**第五条：**
首先，我们选取两个点$x_1$和$x_2$有下式成立
$$(f*g)(x_1)-(f*g)(x_2)= \frac{1}{2\pi}\int_{-\pi}^{\pi}f(y)[g(x_1-y)-g(x_2-y)]dy$$
由于$g$连续，所以其在闭区间内必然是一致连续且有界，又$g$是一个周期函数，所以其必然在$\mathbb{R}$内一致连续。
对于给定的任意的$\epsilon>0$，总存在$\delta>0$，当$|s-t|<\delta$时，使得$|g(s)-g(t)|<\epsilon$。
对于$|x_1-x_2|<\delta$，即$|(x_1-y)-(x_2-y)|<\delta$。于是可以得到该式
$$
\begin{aligned}
|(f*g)(x_1)-(f*g)(x_2)|&\le \frac{1}{2\pi}\left|\int_{-\pi}^{\pi}f(y)[g(x_1-y)-g(x_2-y)]dy\right| \\
&\le \frac{1}{2\pi}\int_{-\pi}^{\pi}|f(y)||g(x_1-y)-g(x_2-y)|dy \\
&\le \frac{\epsilon}{2\pi}\int_{-\pi}^{\pi}|f(y)|dy \\
&\le \frac{\epsilon B}{2\pi} \cdot 2\pi.
\end{aligned}
$$
其中，对于函数$f$有界，即$|f(x)|\le B$，其中$B$是一个常数。从上式可以得到，$f*g$是一个连续函数。

**第六条**：
直接计算，有
$$
\begin{aligned}
\widehat{f*g}(n) &= \frac{1}{2\pi}\int_{-\pi}^{\pi}(f*g)(x)e^{-inx}dx \\
&= \frac{1}{2\pi}\int_{-\pi}^{\pi}\left(\frac{1}{2\pi}\int_{-\pi}^{\pi}f(y)g(x-y)dy\right)e^{-inx}dx \\
&=\left(\frac{1}{2\pi}\int_{-\pi}^{\pi}f(y)e^{-iny}dy\right)\frac{1}{2\pi}\int_{-\pi}^{\pi}g(x-y)e^{-in(x-y)}d(x-y) \\
&= \hat{f}(n)\hat{g}(n)
\end{aligned}
$$
其中，$f$和$g$两者都是连续函数，其卷积也是连续函数，故上式成立。

上面的讨论是针对$f$和$g$都是连续函数的情况，对于$f$和$g$如果仅仅是可积函数时，上面的结论其实也是成立的。
但是证明方法不同，对于此，有一条引理
>**Suppose $f$ is integrable on the circle and bounded by $B$. Then there exists
>a sequence $\{f_k\}_{k=1}^{\infty}$ of continuous function on the circle so that**
>$$\sup\limits_{x\in[-\pi,\pi]}|f_k(x)|\le B$$
>**for all $k=1,2,3\cdots$，and**
>$$\int_{-\pi}^{\pi}|f(x)-f_k(x)|dx\rightarrow0\quad as\;k\rightarrow\infty$$
即，用一个函数序列去逼近我们所要的目标函数。

## Good kernels
对于定义在圆周上的一族核函数$\{K_n(x)\}_{n=1}^{\infty}$需要满足以下条件，才能说是一族好的核函数。
>**1. 对于所有的$n\ge1$，有**
>$$\frac{1}{2\pi}\int_{-\pi}^{\pi}K_n(x)dx=1$$
>**2. 存在$M>0$使得对于所有的$n\ge1$，有下式成立**
>$$\int_{-\pi}^{\pi}|K_n(x)|dx\le M$$
>**3. 对于所有的$\delta>0$，当$n\rightarrow\infty$有**
>$$\int_{\delta\le|x|\le\pi}|K_n(x)|dx\rightarrow0\quad$$
对于上面三式的理解，可以认为第一式表达的是，$K_n(x)$在坐标轴上权重分布，其总权重是一。
第三式表达的是，对于权重的分布，当$n$越大时，越靠近原点。

即，对于卷积的运算，可以看成对$x$处取出该函数$f(x)$的值。
有下面的定理
>**Let$\{K_n\}^{\infty}_{n=1}$ be a family of good kernels, and $f$ an
>integrable function on the circle. Then**
>$$\lim_{n\rightarrow\infty}(f*K_n)(x)=f(x)$$
>**whenever $f$ is continuous at $x$. If $f$ is continuous everywhere, then the
>above limit is uniform.**

这里不再证明。

### Dirichlet kernel is not a good kernel
对于狄利克雷核，显然其对于好的核函数的性质一和性质三，都是满足的，但是对于性质二，有
$$\int_{-\pi}^{\pi}|D_N(x)|dx\ge c\log N, \qquad as\;N\rightarrow\infty$$
所以，对于傅利叶级数，它不一定逐点收敛，可能在某些不连续的点处发散。

## 特殊的和
由于正常的求和下，傅利叶级数是函数和狄利克雷核的卷积，而狄利克雷核并不是好核，所以引入两种特殊的求和方法。

### Cesaro means and summation
对于Cesaro mean/sum 的定义
$$\sigma_N= \frac{s_0+s_1+\cdots+s_N-1}{N}$$
**其中$s_n=\sum\limits_{k=0}^{n}c_k$，是级数的前$n$项和。**
对于$s_k$来讲，该表达式是mean，对于$c_k$，该表达式是sum。

通过该和的定义，其傅利叶级数可以表示为
$$\sigma_N(f)(x)=(f*F_N)(x)$$
其中，$F_N(x)$是一个好核，定义为Fejer's kernel。
$$F_N(x)= \frac{D_0(x)+D_1(x)+\cdots+D_{N-1}(x)}{N}=\frac{1}{N}\frac{\sin^2(Nx/2)}{\sin^2(x/2)}$$
应用好核的性质，可以得到以下推论
>**推论1：If $f$ is integrable on the circle and $\hat{f}(n)=0$ for all $n$,
>the $f=0$ at all points of continuity of $f$**.
>
>**推论2：continuity functions on the circle can be uniformly approximated by
>trigonometric poolynomials**.

不再证明以上结果。

### Abel means and summation
对于Abel means 的定义
$$\lim_{r\rightarrow1}A(r)=s$$
其中，$A(r)=\sum\limits_{k=0}^{\infty}c_kr^k$

同样的有相应的傅利叶级数的形式
$$A_r(f)(\theta)=\sum^{\infty}_{n=-\infty}r^{|n|}a_ne^{in\theta}=(f*P_r)(\theta)$$
其中，$P_r(\theta)=\sum\limits_{n=-\infty}^{\infty}r^{|n|}e^{in\theta}$，
同样,$P_r(\theta)$也是一个好核，定义为Poisson kernel。

## 最后
该章的练习中，有一些结论比较好，不过这里就不放了，如果感兴趣的话，可以自己去做一下。

