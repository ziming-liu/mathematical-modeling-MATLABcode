%main

x0 =[1;1;1;1] ; lb =[0;0;0;0] ; up= []; A=[]; b=[] ; Aeq = []; beq= [];
[x,fval] = fmincon('fun1',x0,A,b,Aeq,beq,lb,up,'myconl');
x
fval
