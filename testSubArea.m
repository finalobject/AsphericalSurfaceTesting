subs=getSubArea(0.1);
row = 8;
col = 9;

for i=1:row
    for j=1:col
        subplot(row,col,j+col*(i-1));imshow(subs(:,:,i,j),[]);

    end
end
    percision = 0.1;
    startP = -29.5;
    endP = 30.5;
    row = 8;
    col = 9;
    subSide = (endP-startP)/7;
    subSize = length(0:percision:subSide);
    i=7;j=4;
    [x,y]=getXY(i,j,endP,startP,col,subSide);
            [x1,y1,z1]=getSurByEquation(percision,x-subSide/2,y-subSide/2,subSide);
            k=getFitEuq(x1,y1,z1);
            [x2,y2,z2]=getSurByFit(k,percision,x-subSide/2,y-subSide/2,subSide);
            diff=z1-z2;
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