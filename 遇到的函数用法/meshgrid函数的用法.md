**meshgrid**用于从数组a和b产生网格。生成的网格矩阵A和B大小是相同的。它也可以是更高维的。这里的大小指的是，size()函数的大小，size()函数返回的是一个向量， 那么size(A) = size(B).**

[A,B]=Meshgrid(a,b)
生成size(b)Xsize(a)大小的矩阵A和B。它相当于a从一行重复增加到size(b)行，把b转置成一列再重复增加到size(a)列。

因此命令等效于：

 

如下所示：

　　

举个实例：For example, to evaluate the function： x*exp(-x^2-y^2)

​                   over the range -2 < x < 2, -2 < y < 2,

​                   [X,Y] = meshgrid(-2:.2:2, -2:.2:2);

​                   Z = X .* exp(-X.^2 - Y.^2);

​                   mesh(X,Y,Z)

对于三维网格，生成方式与二维一样 ：[x y z]=meshgrid(a b c) ; %算出的结果根据二维的类推

 

附件：二维网格例子的结果图。

 ![img](http://hi.csdn.net/attachment/201110/14/0_131859991399cT.gif)

作者：[木木](http://haore147.cnblogs.com/)