% @author finalObject
%         http://www.finalobject.cn
%         i@finalobject.cn
%         https://github.com/finalObject
% @date 2017年4月8日 17:45:01
% @version 1.0
% 获取局部子图像
% 第四列数据出现了大量的拟合失误
function subs=getSubArea(percision)
    % 局部位置总共9列，奇数列有7个单元，偶数列有8个单元，总共有67个子图
    % 储存时储存在一块，8行*9列，奇数列最后一格为空，
    % 第1列第1个为左上角
    % 右下角坐标为(-29.5,-29.5)
    % 布局看cad文件
    badMatch = 0;
    startP = -29.5;
    endP = 30.5;
    row = 8;
    col = 9;
    subSide = (endP-startP)/7;
    subSize = length(0:percision:subSide);
    subs(1:subSize,1:subSize,1:row,1:col)=0; 
    for i = 1:row
        for j =1:col
            if (mod(j,2)==1)&i==row
                subs(:,:,i,j)=0;
                continue;
            end
            [x,y]=getXY(i,j,endP,startP,col,subSide);
            [x1,y1,z1]=getSurByEquation(percision,x-subSide/2,y-subSide/2,subSide);
            k=getFitEuq(x1,y1,z1);
            [x2,y2,z2]=getSurByFit(k,percision,x-subSide/2,y-subSide/2,subSide);
            diff=z1-z2;
            
            tmp = max(max(diff));
            if (tmp>1)
                badMatch=badMatch+1;
                fprintf('%d-%d\n',i,j);
            end
            subs(:,:,i,j)=diff;
        end
     end
     fprintf('bad-%d\n',badMatch);
end
%少量测试，没有问题
function [x,y]=getXY(i,j,endP,startP,col,subSide)%获取的是矩形中心的坐标
    stepX = (endP-startP)/(col-1);
    stepY = subSide;
    if mod(j,2)==1%奇数列
        x = startP+j*stepX-stepX;
        y = endP-(i*stepY-stepY/2);
    else%偶数列
        x = startP+j*stepX-stepX;
        y = endP-(i*stepY-stepY);
    end
end
