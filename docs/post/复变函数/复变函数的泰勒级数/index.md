

## 复变函数的级数
在介绍泰勒级数之前，需要了解幂级数的知识，而幂级数的知识，又需要级数的知识做前置。

### 复变函数的级数的定义
对于形如：
$$\sum^n_{k=0}w_k(z)=w_0(z)+w_1(z)+w_2(z)+\dots+w_k(z)+\dots $$
的级数称为复变函数的级数，其中$z$为复变量，$w_(z)$是复变函数。

**对于复变函数的收敛和发散**，定义为：

当$n\rightarrow\infty$时，若级数的部分和$S_n=\sum^n_{k=0}w_k(Z)$的极限存在，即
$$\lim_{n\rightarrow\infty}S_n(z)=S(z)$$
则称级数$\sum \limits^{\infty}_{k=0}w_k(z)$在$z$点收敛，$S(z)$称为级数在$z$点的
和;否则称级数在$z$点发散。

如果级数在区域$D$或曲线$l$上所有的点都收敛，则称级数在$D$或$l$上收敛，级数收敛的
区域称为**收敛域**。

显然，级数收敛的**必要条件**是：
$$\lim_{k\rightarrow\infty}w_k(z)=0$$
对于级数收敛的**充要条件**：

任给$\varepsilon>0$，存在正整数$N(\varepsilon,z)$，使当$n>N(\varepsilon,z)$时，
对任意自然数$p$，有
$$|S_{n+p}(z)-S_n(z)|=|\sum_{k=1}^pw_{n+k}(z)|<\varepsilon$$
则级数在$\sum \limits^{\infty}_{k=0}w_k(Z)$在$z$点收敛。

### 绝对收敛的级数的判别
若级数$\sum \limits_{k=0}^{\infty}|w_k(z)|$在$z$点收敛，则称级数$\sum^{\infty}_{k=0}w_k(z)$在$z$点**绝对收敛**。

对于绝对收敛的级数的判别法有：

<img src="https://link.jscdn.cn/sharepoint/aHR0cHM6Ly9jdW10ZWR1Y24tbXkuc2hhcmVwb2ludC5jb20vOmk6L2cvcGVyc29uYWwvbGl1d2VpMDkyMl9jdW10X2VkdV9jbi9FZF9EN2Y0SkN2OU5tQVdRcGFKd1dvZ0JRVjJRZVAzOUVNZW9xZGY1UkhFUGZRP2U9WG9GUWR0.jpg" width="75%">
<img src="https://link.jscdn.cn/sharepoint/aHR0cHM6Ly9jdW10ZWR1Y24tbXkuc2hhcmVwb2ludC5jb20vOmk6L2cvcGVyc29uYWwvbGl1d2VpMDkyMl9jdW10X2VkdV9jbi9FVUh0WXlxMG85MU1reTh2Zkh3bkxhQUJhbkhaSmYwWHk2clRwU3V4NmszdFpnP2U9WWlQdGdj.jpg" width="75%">

在物理中，对于绝对收敛的级数的判别是很少的，主要是用以上的判别法求收敛半径。一般
在幂级数中用的比较多。在泰勒级数展开的过程中，一般是找奇点更简单。

对于比较判别法，常用的比较用的级数是 $\sum \limits^{\infty}\_{k=0}q^k$ ，该级数在
$q<1$时收敛，在$q>1$时发散。还有另一个常用的级数是
$\sum\limits^{\infty}_{q=1}\frac{1}{q^p}$，对于$p>1$时，该级数收敛，
对于$p\le1$时，级数发散。

### 一致收敛的级数
任给$\varepsilon>0$，存在与$z$无关的正整数$N(\varepsilon)$，使当$n>N(\varepsilon)$时，对于$D$或$l$上的$z$，均有
$$|S(z)-S_n(z)|<\varepsilon$$
此时称$\sum\limits_{k=0}^{\infty}w_k(z)$在$D$或$l$上 **一致收敛** 于$S(z)$。

一致收敛和收敛的区别在于，一致收敛时，最后的$N$不依赖与变量$z$，对于给定的区域一
致成立。可以这样想，收敛是将一条绳子缠起来，可能是规定了缠绕了方向的。但是对于一
致收敛，则可以在任意方向下缠绕。

一致收敛的级数的判别法：

<img src="https://link.jscdn.cn/sharepoint/aHR0cHM6Ly9jdW10ZWR1Y24tbXkuc2hhcmVwb2ludC5jb20vOmk6L2cvcGVyc29uYWwvbGl1d2VpMDkyMl9jdW10X2VkdV9jbi9FUmxLTFdaeWVLeFB2akhCWjBzWXZCUUJ5a1RCbXl5SXpfckNWRm5yU2NmQmJBP2U9Y05ZNmtq.jpg" width="75%">

一般是用不到的，了解即可。

对于一致收敛的级数$\sum\limits_{k=0}^{\infty}w_k(z)$，有以下重要性质：

1. 逐项求极限（连续性）
    - 对于在D内一致收敛于$S(z)$，且每一项$w_k(z)$在$D$内连续$\lim\limits_{z\rightarrow
    z_0}w_k(z)=w_k(z_o)$ 可得：
    - $S(z)=\sum\limits^{\infty}\_{k=0}w_k(z)$在$D$内连续，$\lim\limits_{z\rightarrow
    z_0}S(z)=S(z_0)$，亦可逐项求极限，$\lim\limits_{z\rightarrow
    z_0}\sum\limits_{k=0}^{\infty}w_k(z)=\sum\limits_{z\rightarrow z_0}^{\infty}\lim\limits_{z\rightarrow z_0}w_k(z)$

2. 逐项积分
    - 对于在曲线$l$上一致收敛于$S(z)$，每一项$w_k(z)$在$l$上连续，有：
    - $\sum\limits_{k=0}^{\infty}w_k(z)$可沿$l$逐项积分，
    $\int_l\sum\limits_{k=0}^{\infty}w_k(z)dz=\sum\limits_{k=0}^{\infty}\int_kw_k(z)dz$

3. 逐项求导——魏尔斯特拉斯定理
    - 对于在$\overline{D}$的边界$L$上一致收敛于$S(z)$，每一项$w_k(z)$在
    $\overline{D}$内解析，有：
    - $S(z)=\sum\limits_{k=0}^{\infty}w_k(z)$在$D$内解析，且可以逐项求导任意多次，即
    $\frac{d^n}{dz^n}\sum\limits_{k=0}^{\infty}=\sum\limits^{\infty}_{k=0}\frac{d^nw_k(z)}{dz^n}$

在一致收敛的级数中，要着重强调的是幂级数，正是这些性质的存在，所以幂级数十分重要。

## 幂级数
对于幂级数，其所拥有的特征是我们对一个函数泰勒展开的基础。

### 阿贝尔定理
如果幂级数$\sum\limits_{k=0}^{\infty}a_k(z-b)^k$在某点$z_0$收敛，则级数在以
$b$点为圆心，$|z-b|$为半径的圆内绝对收敛，并在
$$|z-b|\le q|z_0-b| \quad (0<q<1)$$
的闭圆上一致收敛。

其中，要理解对于这个内部的闭圆$q|z_0-b|$中的$q$是指可以无限靠近于1的一个数，此时
可以说是对于除了$|z-b|$这个边界圆上的点无法满足要求以外，内部的点都满足要求。

从阿贝尔定理可以得到，幂级数的收敛区域是一个以点$a$为圆心的开圆（或是一个点或是
一个平面）。如果幂级数在圆上发散，则圆外必然发散;如果在圆上收敛，则必然在圆内收
敛。如此必然有一个范围决定了其收敛区域的大小，该范围的半径，叫做幂级数的**收敛半径**。

### 收敛半径的求解：
前面所提及的[绝对收敛的级数判别](#绝对收敛的级数的判别)中有具体的判别方法。这里
是归纳一下具体的应用。
- 根式法
>若存在$\lim\limits_{k\rightarrow\infty}\sqrt[k]{|a_k(z-b)^k|}=|z-b|\lim\limits_{k\rightarrow\infty}\sqrt[k]{|a_k|}=r$
>成立，则有以下判别式：
>
>(1) 当$r<1$时，级数绝对收敛
>
>(2) 当$r>1$时，级数发散。
>因此，级数的收敛半径是
>$R=\lim\limits_{k\rightarrow\infty}\frac{1}{\sqrt[k]{|a_k|}}$
>
>其中如果序列$\{\sqrt[k]{|a_k|}\}$存在多个聚点，而其上极限是
>$\overline{\lim\limits_{k\rightarrow\infty}}\sqrt[k]{|a_k|}$，此时幂级数的收敛
>半径为：
>$$R=\frac{1}{\overline{\lim\limits_{k\rightarrow\infty}}\sqrt[k]{|a_k|}}$$
- 比值法
>与上类似，也是利用等比级数得到的收敛半径，即
>$$R=\lim\limits_{k\rightarrow\infty}\left|\frac{a_k}{a_{k+1}}\right|$$
- 逐项微分或逐项积分法
>对于$\sum\limits_{k=0}^{\infty}\varphi_k(z)$的收敛半径$R_0$已知，此时其积分或其
>微分的相应的级数的收敛半径与其相同，为$R=R_0$ 
- <span id ="奇点法">奇点法</span>
>对于离收敛中心最近的一个奇点，两者之间的距离就是收敛半径。这个方法通常用于将一
>个函数展开为泰勒级数中。

### 幂级数在收敛圆内的性质
- 幂级数在收敛圆内解析，且可以逐项求导多次，逐项积分。

即，对于任意一个幂级数的和，在其收敛圆内都是一个解析函数。

可以由阿贝尔定理得到，幂级数在收敛圆内是一致收敛的级数，所以其具有一致收敛的级
数的相应性质。但是对与收敛圆本身，能否收敛是要特殊讨论的，所以不一定具有这些性质。
## 泰勒级数
对于函数$f(z)$在圆域$|z-R|<R$内解析，则$f(z)$可在圆内任意点$z$展开为泰勒级数
$$f(z)=\sum\limits_{k=0}^{\infty}a_k(z-b)^k $$
其中，$a_k=\frac{f^{(k)}(b)}{k!}$是泰勒系数。

**泰勒级数是唯一的**：
设$f(z)$能展开成另一形式$f(z)=\sum\limits_{k=0}^{\infty}A_k(z-b)^k$，两边对
$z$求$k$阶导数后，令$z=b$即可证明$A_k=\frac{f^{(k)}(b)}{k!}=a_k$。

**泰勒级数的收敛半径**：
[奇点法](#奇点法)是最为方便的。

**解析函数和泰勒级数的关系**：
对于复变函数，任意的在圆内的解析函数都是可以展开为幂级数，即对于任何幂级数，
都是它的和的泰勒级数，当然这个圆的收敛半径是不确定的。

**泰勒级数是对单连通区域的展开，所以是无法用在多连通区域中的。**

**对于收敛半径的介绍**：收敛半径由于存在奇点法的求解，我们可以对一个函数在不同的
展开中心处展开，得到不一样的收敛半径。

### 展开为泰勒级数的方法
1. 直接计算泰勒系数。
    - 一般不会如此的恶心人，当然，不排除意外。

2. 换元法
    - 就是对初等函数的泰勒级数中通过换元得到待求级数

3. 利用两个绝对收敛的幂级数的乘积或商
    - 就是把函数拆成两个函数的乘积或商，然后乘除在一起。
    - 严重不推荐，因为如果对级数的乘积不熟悉，十分容易搞错。

4. 在收敛圆内求导或积分
    - 最常用的一种方法，也是用的最多的一种方法。
    - 经常用的级数是$\frac{1}{1-z}=\sum\limits_{k=0}^{\infty}z^k$，或者是指数函
    数以及三角函数的展开式。

5. 待定系数法
    - 就是解多项式方程，挨个比较系数，或者是得到系数的递推公式。
    - 一般是需要脑子的，要找规律。

**总结**：由于对于函数的泰勒展开只有唯一一种展开形式，所以我们可以用各种方法去处
理，只要得到相应的结果即可。

