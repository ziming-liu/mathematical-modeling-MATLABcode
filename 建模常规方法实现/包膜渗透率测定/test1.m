% 例 求解如下最小二乘非线性拟合问题
% 已知  输入向量tdata和输出向量cdata，(也就是xdata和ydata）且长度都是n，待拟合函数的表达式为
% F(x,tdata)= x(1) + x(2)*exp(-0.02*x(3)*tdata);
% 
% 即目标函数为min Σ(F(x,tdata(i))-cdata(i))^2    ---最小二乘表达式
% 其中：F(x,tdata) =x(1) + x(2)*exp(-0.02*x(3)*tdata);
% 初始解向量为x0 = [0.2,0.05,0.05];，即表达式的 3个参数[x(1),x(2),x(3)]。
% 解：先建立拟合函数文件，并保存为curvefun.m
% function F = curvefun(x,xdata)
% F = x(1) + x(2)*exp(-0.02*x(3)*tdata);
% 然后给出数据tdata和cdata

tdata  = linspace(100,1000,10);
cdata = 1e-05.*[454 499 535 565 590 610 626 639 650 659 ];
x0 = [0.2,0.05,0.05];
x = lsqcurvefit('curvefun',x0,tdata,cdata)
f = curvefun(x,tdata)
plot (tdata,cdata,'o',tdata,f,'r-')
% 
% 非线性曲线拟合是已知输入向量xdata和输出向量ydata，并且知道输入与输出的函数关系为ydata=F(x, xdata)，
% 但不知道系数向量x。今进行曲线拟合，求x使得输出的如下最小二乘表达式成立：
% min Σ(F(x,xdatai)-ydatai)^2
% 
% 函数  lsqcurvefit
% 格式  x = lsqcurvefit(fun,x0,xdata,ydata)
% x = lsqcurvefit(fun,x0,xdata,ydata,lb,ub)
% x = lsqcurvefit(fun,x0,xdata,ydata,lb,ub,options)
% [x,resnorm,residual] = lsqcurvefit(…)
% [x,resnorm,residual,exitflag] = lsqcurvefit(…)
% [x,resnorm,residual,exitflag,output] = lsqcurvefit(…)
% [x,resnorm,residual,exitflag,output,lambda] = lsqcurvefit(…)
% [x,resnorm,residual,exitflag,output,lambda,jacobian] =lsqcurvefit(…)
% 参数说明：
% x0为初始解向量；xdata，ydata为满足关系ydata=F(x, xdata)的数据；
% lb、ub为解向量的下界和上界lb≤x≤ub，若没有指定界，则lb=[ ]，ub=[ ]；
% options为指定的优化参数；
% fun为待拟合函数，计算x处拟合函数值，其定义为     function F = myfun(x,xdata)
% resnorm=sum ((fun(x,xdata)-ydata).^2)，即在x处残差的平方和；
% residual=fun(x,xdata)-ydata，即在x处的残差；
% exitflag为终止迭代的条件；
% output为输出的优化信息；
% lambda为解x处的Lagrange乘子；
% jacobian为解x处拟合函数fun的jacobian矩阵。