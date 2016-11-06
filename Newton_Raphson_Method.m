clc
clear all
close all
a=zeros(10,1);
a(1)=1;
k=0;
for i=1:10
    f=a+4.*sqrt(a)-8;
    df=1+2./(sqrt(a));
    a(i+1)=a(i)-f(i)./(df(i));
    if (abs(a(i)-a(i+1))<1e-9) || (abs(f(i))<1e-9)
        break
    end
k=k+1;
end
syms x;
f=x+4*sqrt(x)-8;
disp('Using the Newton-Rafson method for solving')
disp(' ')
disp('f(x)=0 where f(x) is')
pretty(f)
disp(' ')
disp('after')
disp(' ')
disp(k)
disp('iterations, the answer is')
disp(' ')
disp('a=')
disp(a(i))

