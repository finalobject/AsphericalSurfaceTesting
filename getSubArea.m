% @author finalObject
%         http://www.finalobject.cn
%         i@finalobject.cn
%         https://github.com/finalObject
% @date 2017年4月8日 17:45:01
% @version 1.0
% 获取局部子图像
function sub=getSubArea(percision)
    % 局部位置总共9列，奇数列有7个单元，偶数列有8个单元，总共有67个子图
    % 储存时储存在一块，8行*9列，奇数列最后一格为空，
    % 第1列第1个为左上角
    % 右下角坐标为(-29.5,-29.5)
    % 布局看cad文件
    startP = -29.5;
    endP = 30.5;
    subSide = (endP-startP)/7;
end
%少量测试，没有问题
function [x,y]=getXY(i,j)%获取的是矩形中心的坐标
    stepX = (endP-startP)/8;
    stepY = subSide;
    if mod(j,2)==1%奇数列
        x = startP+j*stepX-stepX;
        y = endP-(i*stepY-stepY/2);
    else%偶数列
        x = startP+j*stepX-stepX;
        y = endP-(i*stepY-stepY);
    end
end
