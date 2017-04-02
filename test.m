clear;
clc;
[x1,y1,z1]=getSurByEquation(0.1);
z1=zeros(601,601);
phase=getPhase(x1,y1,z1);
imshow(phase,[]);