

## 两体运动
由于之前的分析，我们可以得到，在两体运动中，物体的运动轨迹是圆锥曲线。
但是在普通的坐标系下这个问题是十分复杂的，所以我们在这里去想办法简化问题。


### 惯性系下的动力学方程
以太阳与地球的运动为例，其中太阳在惯性系下的动力学方程为：
$$m_S\frac{d^2 \vec r_S}{dt^2}=\frac{Gm_Sm}{r^2}\frac{\vec r}{r}$$
其中的$\vec r=\overrightarrow{SP}$,剩下的量如图所示：

<img id="坐标图" src="https://link.jscdn.cn/sharepoint/aHR0cHM6Ly9jdW10ZWR1Y24tbXkuc2hhcmVwb2ludC5jb20vOmk6L2cvcGVyc29uYWwvbGl1d2VpMDkyMl9jdW10X2VkdV9jbi9FZmtRcHZVbThtdEhzRWNoQTNkXzJSSUJQc1c5ams2RElDOG5CdFZnRGdpWldRP2U9ZjdVS2Ja.jpg" width="50%" />

而地球在惯性系下的动力学方程是：
$$m\frac{d^2\vec r_P}{dt^2}=-\frac{Gm_Sm}{r^2}\frac{\vec r}{r}$$
将两个方程相加，可以得到;
$$\frac{d^2}{dt^2}(m_S\vec r_S+m\vec r_P)=0$$
仅看括号内的内容，可以发现是质心系的质心位置确定，即
$$m_S\vec r_S+m\vec r_P=(m_S+m)\vec r_C$$
其中$r_C$是其质心对于该惯性系的位矢。将上式代入可以得到
$$(m_S+m)\frac{d^2}{dt^2}\vec r_C=0$$
 我们可以得到，其质心处的运动将保持惯性运动（合力为零）。

### 质心下的动力学方程
仍然是[该图](#坐标图)，依据该图列方程，有行星对质心C的动力学方程为
$$m\ddot{\vec r_1}=-\frac{k^2m}{(r_1+r_2)^2}\frac{\vec r_1}{r_1}$$
由于C是质心，鼓$mr_1=m_Sr_2$，而$r_1+r_2=(1+\frac{m}{m_S})r_1=\frac{m_S+m}{m_S}r_1$，
此时上式变为：
$$m\ddot{\vec r_1}=-\frac{k^2mm_S^2}{(m_S+m)^2}\frac{1}{r_1^2}\frac{\vec r_1}{r_1}$$
可以看出，力和距离的关系仍然是平方反比的关系。对于太阳，情况类似。可以说，行星在质心系下仍然是圆锥曲线的轨迹。

### 折合质量
现在来找行星对太阳的相对运动方程，坐标系还是[该图](#坐标图)。

出发点是在[惯性系下的动力学方程](#惯性系下的动力学方程)，将其变换，想办法消掉$m_S$，可以得到
$$m\frac{d^2\vec r}{dt^2}=-\frac{Gm(m_S+m)}{r^2}\frac{\vec r}{r}$$
其中$m$是行星的质量，$\vec r$是行星对太阳$S$的位矢，$\ddot{\vec r}$是行星相对于太阳运动时的加速度。

所以可以认为该方程是相对于太阳的动力学方程，可以认为此时太阳是不动的。

为简单起见，将方程改写为以下形式：
$$\frac{m_Sm}{m_S+m}\frac{d^2\vec r}{dt^2}=-\frac{k^2m}{r^2}\frac{\vec r}{r}$$
其中，$k^2=Gm_S$是一个关于太阳的量，显然，该式中太阳的质量为变化，行星的质量减小了。

所以我们取$\mu=\frac{m_Sm}{m_S+m}$，称其为**折合质量**。

## 变质量物体的运动
对于变质量的物体的运动，此时显然不能直接使用牛顿第二定律，对于不同情况要特殊分析。
此时我们找一个避免使用牛顿第二定律的方法，简化问题。

设一物体的质量在时间$t$时为$m$，它的速度是$\vec v$（远小于光速），同时一微小质量$\Delta m$以速度$\vec u$运动，
并在$t+\Delta t$时间间隔内与$m$合并，合并后的共同速度是$\vec v+\Delta \vec v$如果作用在$m$及$\Delta m$上的合外力为$\vec F$,
可以由动量定理得
$$(m+\Delta m)(\vec v+\Delta\vec v)-m\vec v-\Delta \vec u=\vec F\Delta t$$
略去二阶小量，并除以$\Delta t$，并使$\Delta t\rightarrow0$得到变质量物体动力学方程为：
$$\frac{d}{dt}(m\vec v)-\frac{dm}{dt}\vec u=F$$
其中，$u$是微质量$\Delta m$未与$m$合并以前或自$m$分出后的速度，$\frac{dm}{dt}$为质量的时间变化率（可正可负），
$\vec F$是总合力。
- 当$\vec u=0$时，有$\frac{d}{dt}(m\vec v)=\vec F$
- 如果$\vec u=\vec v$，有$m\frac{d\vec v}{dt}=\vec F$
这与质量为定值的运动方程形式上没有什么区别，但是实质是不一样的，这里的$m$一般是$t$的函数。

实际计算过程中要确定的是谁是变质量的物体，有时可能是多个变质量的物体，需要列多个方程求解。
对于问题的简化是必须的，不到必须时，不推荐使用该方式解决问题，一般可以用守恒律解决问题。


