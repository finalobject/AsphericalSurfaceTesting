% @author finalObject
%         http://www.finalobject.cn
%         i@finalobject.cn
%         https://github.com/finalObject
% @date 2017年4月2日 10:15:21
% @version 0.5
% 获取相位图
% 输入参数就是xyz数据，从getSur函数里面出来的数据
% 测试平面的时候表现很好，但是测试曲面的时候感觉到处都是噪声
function phase=getPhase(x,y,z)
    %光源波长，单位毫米
    lamda = 632.8/1000/1000;
    %光源坐标，单位毫米
    
    locX =  0;
    locY =  0;
    locZ = 1000;
    
    [lx,ly] = size(z);
    phase = zeros(lx,ly);
    for ii=1:lx
        for jj=1:ly
            tmpX=x(ii,jj);
            tmpY=y(ii,jj);
            tmpZ=z(ii,jj);
            %phase(ii,jj)=getDis(tmpX,tmpY,tmpZ,locX,locY,locZ);
            phase(ii,jj)= mod(2*getDis(tmpX,tmpY,tmpZ,locX,locY,locZ),lamda)/lamda*2*pi;
        end
    end
end
%子函数
%获取镜面上点到光源的距离，然后获得相位
function dis=getDis(x,y,z,locX,locY,locZ)
   dis = sqrt((x-locX)^2+(y-locY)^2+(z-locZ)^2);
end