
## 复数

复数的表示方法： 

1. 直角坐标系下的表示：$z=x+iy$ ，其中$i$是虚数单位
2. 极坐标下的表示：$z=re^{i\varphi}$ 

由表示方法可以看出，复数的加减与向量的加减是类似的，可以将复数放置在这么一个平面内，称作复平面。而复数的乘除就是这个向量的旋转和放缩。

有以下结论：

- 共轭复数与原复数相对与x轴对称。
- 复数的乘方是周期性的，对一个复数开n次方，则只有n个独立的根。

## 复数域

1. 区域
   - 复平面上的一个点集D
   - D内的任一一点都可取一个半径任意小的圆，圆内的任意一点都在D内（说明D是一个开集）
   - D内的任意两点都可以用D内的点连成的折线连接。

2.  边界点
   - 该点不属于D
   - 该点的任一邻域内都存在D内的点

3. 边界
   - 由边界点组成的集合

4. 闭区域
   - 边界L和区域D

5. 单连通和复连通
   - 区域能否用一条逐段光滑的曲线围成边界
   - 能：单连通
   - 不能：复连通，连通阶数是所用的曲线数目

## 复变函数

### 单值函数：

一一对应的映射

### 多值函数：

一对多的映射

### 相关性质

#### 可微性

1. 连续
   
   - 当一个复变函数的虚数部分和实数部分都是存在极限的情况下，则复变函数本身的极限存在。
   - 如果其极限等于复变函数的值，则说其连续。
   - 如果在区域D内各点上都是连续的，则说是对于区域D连续
   - 对于复变函数的连续，实变函数的连续的性质可以推广至复变函数。
   
2. 导数

   - 函数$f(z)$在z的某个邻域内，如果极限

     $\lim \limits_{h \to 0}\frac{f(z+h)-f(z)}{h}=f^{'}(z)$ 

     存在，则说$f^{'}(z)$在z点可微，并叫做$f(z)$在z点处的导数

3. C-R 条件

   - 如果$f(z)=u(x,y)+iv(x,y)$定义在z的某一个邻域内，而且$u(x,y)$和$v(x,y)$在z点处均可微，则$f(z)$在该点可微的条件是

     $\frac{\partial u}{\partial x}=\frac{\partial v}{\partial y}$ ，$\frac{\partial u}{\partial y}=-\frac{\partial v}{\partial x}$ 

   - 此时$f^{'}(z)=\frac{\partial u}{\partial x}+i\frac{\partial v}{\partial x}$

#### 解析函数（全纯函数）

- 在区域D内的每一个点都可微的函数$f(z)$，叫做区域D内的解析函数
- 极坐标下的C-R条件
  $\frac{\partial u}{\partial \varphi}=-r \frac{\partial v}{\partial r}$，$r \frac{\partial u}{\partial r}=\frac{\partial v}{\partial \varphi}$ 

### 初等复变函数

1. 指数函数$w=e^z$ 
   - 导数$w^{'}=e^z$ 成立，是一个以$2\pi i$为周期的周期函数
2. 对数函数$w=\ln z$ 
   - 导数 $w^{'}=\ln |z|+i\arg z$ ，显然是个多值函数

3. 三角函数 
   - 欧拉公式$e^{ix}=\cos x +i\sin x$ 可以推导出三角函数在复数域内的定义
   - 正弦函数$\sin z = \frac{e^{iz}-e^{-iz}}{2i}$
   - 余弦函数$\cos z =\frac{e^{iz}+e^{-iz}}{2}$ 
   - 正切函数$\tan z = \frac {\sin z}{\cos z }$ 

4. 双曲函数
   - 类似三角函数的定义
   - 双曲正弦$\sinh = \frac{e^z-e^{-z}}{2}$
   - 双曲余弦$\cosh = \frac{e^z+e^{-z}}{2}$
   - 双曲正切$\tanh = \frac{\sinh}{\cosh}$

5. 一般幂函数$w=z^{a}$
   - $z^a=e^{a\ln z}$显然也是一个多值函数

## 复变函数的积分

### 一般情况下的积分

#### 定义

- 设给定一条直线C，以及在该直线上的一个复变函数$f(z)$，有

  $\lim \limits_{n \to 0}\sum \limits_{k=0}^n f(\xi)\cdot (z_{k+1}-z_{k})=\int_Cf(z)dz$，其中$\max |z_{k+1}-z_k| \rightarrow 0$

  该极限作为$f(z)$的积分。

- 积分公式：

  $\int_Cf(z)dz=\int_C udx-vdy+i\int_Cudy+vdx$

#### 性质

- 实变函数的积分的一些普通性质可以推广到复变函数的积分上面，具体不再细写

- 一个用的比较多的性质：

  设$M=\max|f(z)|$，又$l$是曲线C的长度，则有$\left |\int_Cf(z)dz \right| \le \int _C |f(z)||dz| \le Ml$ 

#### 理解：

- 在这个积分的过程中其实有三个平面，分别是

  1. z平面
  2. $f(z)$平面
  3. 积分后的平面

  对于整个过程，是由z平面的一条曲线C上的点经过函数$f$的变换为$f(z)$再由$f(z)$经过积分到达积分平面。

### 柯西定理、柯西公式

#### 柯西定理

- 对于一个单连通解析区域D内的所有具有两个端点的曲线C，积分$\int_Cf(z)dz$的值都相同

- 由上可得：

  对于D内的任取两点$z_0$，$z$，则积分$\int_{z_0}^zf(\xi)d\xi=F(z)$可以看作其积分上限的函数，并且在D内解析，有$F^{'}(z)=\frac{d}{dz}\int_{z_0}^zf(\xi)d\xi=f(z)$

- 同样，可以说，在该区域D内的闭合曲线C上的积分都是0，即$\int_Cf(z)dz=0$成立
- 对于闭区域$\overline{D}$如果是连续的，且D是解析的，则沿着边界的积分也是0，即$\int_Cf(z)dz=0$，C是边界线

#### 多连通区域下的柯西定理

- 如果在多连通区域D下，有两条端点相同的曲线C<sub>1</sub>和C<sub>2</sub>，而它们的位置能使得它们能围成一个属于D的单连通区域时，沿着两条曲线的积分相同。

- 即积分曲线内部不包含奇点或不解析的区域

- 对于一般的情况下，则有：

  沿着曲线C积分，其中曲线C是区域D中的任意一条曲线两端点为a和b，有
  
  $$\int_C f(z) dz=\int \limits_a^b {\_{\widetilde C}} f(z) dz=
  \int\limits_a^b {_{C_0}} f(z)dz+N_1\Gamma_1+N_2\Gamma_2+\cdots+N_n\Gamma_n$$

  其中曲线 $\widetilde{C}$是由曲线C经过连续变形而成的，其包含以下部分：

  1. 曲线$\widetilde{C_0}$，它同曲线C<sub>0</sub>一起围成一个属于D的单连通区域，而曲线C<sub>0</sub>则是一条连接a和b的简单曲线（即没有和自己相交的点）
  2. m条简单闭合曲线$\gamma_k(k=1,2,3,\cdots,m)$的总和，每一条曲线都包含了D的边界的一个连接部分
  3. n-m条曲线$\gamma_k(k=m+1,\cdots,n)$，每一条曲线包围着区域D的边界的连接部分，但不是$\widetilde{C}$的组成部分。

  对于（2）（3）两种情况，引入记号$\Gamma_k=\int_{\gamma_k}f(z)dz(k=1,2,3,\cdots,n)$，表示对其的积分,$\Gamma_k$叫做$f(z)$在多连通区域D的积分周期，或积分常量。

- 对于多连通区域D，如果$f(z)$在区域D内是解析的，
在$\overline{D}$内是连续的，则其沿着边界的积分是0（沿着正方向积分，
即积分区域总在边界的同一边，常为左边，即外逆内顺）。

#### 柯西公式

- 设函数$f(z)$在n阶连通区域内是解析的，在$\overline{D}$内是连续的，则对于区域内的任意一点z有$f(z)=\frac{1}{2\pi i}\int_C\frac{f(z)}{\xi-z}d\xi$，成立。其中C是区域D的边界，其被通过的方向始终是区域D保持在左边。

- 小圆弧引理：

  对于若$\varphi(z)$在$z=a$的无心邻域内连续，在小圆弧C<sub>r</sub>（$z-a=re^{i\theta}(\theta_1\le\theta\le\theta_2)$）上有$\lim \limits_{r\to0}(z-a)\varphi(z)=k$，一致成立，则$\lim\limits_{r\to0}\int_{C_r}\varphi(z)dz=ik(\theta_2-\theta_1)$ 

- 大圆弧引理：

  对于若$\varphi(z)$在无穷远点的无心邻域内连续，
  在大圆弧C<sub>R</sub>($Z=Re^{i\theta},\theta_1\le\theta\le\theta_2,R\to\infty$)上有$\lim \limits_{R\to\infty}\varphi(z)=K$，一致成立，则$\lim \limits_{R\to\infty}\int_{C_R}\varphi(z)dz=iK(\theta_2-\theta_1)$ 

- 中值定理：

  $f(z)=\frac{1}{2\pi}\int_0^{2\pi}{f(z+Re^{i\varphi})}d\varphi$ 
- 最大模定理：

    如果不恒等于一常数的函数$f(z)$，在区域D内是解析的，
    在$\overline{D}$内是连续的，那么它的模不可能在D的任何一个内点处达到最大值。
- 施瓦茨引理：

    如果函数$f(z)$在圆$|z|<1$内是解析的，在闭圆$|z|\le1$上是连续的，
    并且$f(0)=0$又在圆内处处都有$|f(z)|\le1$，那么在这个圆内有
    $$|f(z)\le|z|$$
    这时，如果即使在圆内的一个点处有$|f(z)|=|z|$，那么最后这个等式在整个圆内都成立，并且
    $$f(z)=e^{i\alpha}z$$
    其中$\alpha$是一个实常数。

    对于该引理，可以认为，对于任何一个利用解析函数的映射，都是将单位圆映射到一个位于单位圆内部的区域$\Delta$上，
    此时任意一个点都比原来的单位圆要更加的靠近原点，如果即使与原来的距离相等，
    那就是说明，该映射相当与是一个旋转的操作。

#### 高阶导数
如果函数$f(z)$在区域D内是解析的，在$\overline{D}$上是连续的，
那么它在D内的每一个点处都具有所有各阶的导数，并且其第n阶导数可以用公式
$$f^{(n)}(z)=\frac{n!}{2\pi i}\int_C\frac{f(\xi)d\xi}{(\xi-z)^{n+1}}$$
表示，其中C是区域D的边界。

