%网上找到的用来拟合球面的code
clear;

clc;

[x,y,z]=sphere(5);

data=10*unique([x(:)-0.1,y(:)+0.2,z(:)],'rows');

data=data+rand(size(data,1),size(data,2))%我随便生成的，你用你的数据替代

f=@(p,data)(data(:,1)-p(1)).^2+(data(:,2)-p(2)).^2+(data(:,3)-p(3)).^2-p(4)^2;

p=nlinfit(data,zeros(size(data,1),1),f,[0 0 0 1]')%拟合的参数

hold on

plot3(data(:,1),data(:,2),data(:,3),'o')

[X,Y,Z]=meshgrid(linspace(-14,14));

V=(X-p(1)).^2+(Y-p(2)).^2+(Z-p(3)).^2-p(4)^2;

isosurface(X,Y,Z,V,0);

alpha .5;camlight;axis equal;grid on;view(3);

title(sprintf('(x-%f)^2+(y-%f)^2+(z-%f)^2=%f',p(1),p(2),p(3),p(4)^2))