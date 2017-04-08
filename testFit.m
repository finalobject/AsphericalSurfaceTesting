% @author finalObject
%         http://www.finalobject.cn
%         i@finalobject.cn
%         https://github.com/finalObject
% @date 2017Äê4ÔÂ7ÈÕ 21:51:22
% @version 0.1
%Euqation0.1:(8.7076,-12.4373),0.0407,20.6988
%PCD:(-11.3015,8.7044),0.5,16.5284
clear;
clc;
[x1,y1,z1]=getSurByEquation(0.1);
%[x1,y1,z1]=getSurByPCD();
k=getFitEuq(x1,y1,z1);
x1=k(1);
y1=k(2);
z1=k(3);
a=k(4);
b=k(5);
c=k(6);
ab=sqrt(abs(a^2-b^2));
focusX1=-ab+x1;
focusX2=ab+x1;
focusY=y1;
focusZ=z1;