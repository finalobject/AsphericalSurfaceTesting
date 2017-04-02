% @author finalObject
%         http://www.finalobject.cn
%         i@finalobject.cn
%         https://github.com/finalObject
% @date 2017年4月2日 11:48:22
% @version 0.1
% 测试结果见data
clear;
clc;
[x1,y1,z1]=getSurByEquation(0.1);
z1=zeros(601,601);
phase=getPhase(x1,y1,z1);
imshow(phase,[]);