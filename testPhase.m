% @author finalObject
%         http://www.finalobject.cn
%         i@finalobject.cn
%         https://github.com/finalObject
% @date 2017年4月2日 11:48:22
% @version 0.1
% 测试结果见data
clear;
clc;
%[x1,y1,z1]=getSurByEquation(0.1);
%[x1,y1,z1]=getSurByPCD();
[xm,ym,zm]=getSurByEquation(0.1);
k=getFitEuq(xm,ym,zm);
[x1,y1,z1]=getSurByFit(k,600);
%z1=zeros(601,601);
phase=getPhase(x1,y1,z1);
%mesh(phase);
imshow(phase,[]);

