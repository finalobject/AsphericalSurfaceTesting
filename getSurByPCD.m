% @author finalObject
%         http://www.finalobject.cn
%         i@finalobject.cn
%         https://github.com/finalObject
% @date 2017年4月1日 17:45:01
% @version 1.0
% 根据点云数据获取球面
% 数据中只有一个sheet，假设就是z轴数据，xy是从-29.5~30.5均匀分布
function [x,y,z]=getSurByPCD()
    %采样点太少了，单位相差数据太大
    filePath='/Users/finalobject/Documents/asphericalSurfaceTesting/Z55.xlsx';
    startP = -29.5;
    endP = 30.5;
    
    
    z = xlsread(filePath,1);
    size = length(z);

    [x,y] = meshgrid(linspace(startP,endP,size));
    %mesh(x,y,z);
end