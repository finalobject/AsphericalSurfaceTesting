% @author finalObject
%         http://www.finalobject.cn
%         i@finalobject.cn
%         https://github.com/finalObject
% @date 2017年4月2日 10:15:21
% @version 1.2
% 获取相位图
% 输入参数就是xyz数据，从getSur函数里面出来的数据
function getPhase(x,y,z)
    %光源波长，单位毫米
    lamda = 632.8/1000/1000;
    %光源坐标，单位毫米
    locX = 0.5;
    locY = 0.5;
    locZ = 10000;
end
%子函数
%获取镜面上点到光源的距离，然后获得相位
function getPhaseIndex()
    disp('hey');
end