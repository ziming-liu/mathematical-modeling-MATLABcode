rng('shuffle');
p0 = 0;
tic
for i = 1: 10^5
    x = 99*rand(5,1);
x1 = floor(x);x2 = ceil(x);
[f,g] = mengte(x1);
if sum(g<=0) ==4
    if p0<f
        x0=x1;
        po=f;
    end
end

[f,g] = mengte(x2);
if sum(g<= 0) == 4
    if p0<f 
        x0=x2;
        p0=f;
    end
end
end
x0
p0
toc

