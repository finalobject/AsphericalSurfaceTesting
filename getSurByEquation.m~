% @author finalObject
%         http://www.finalobject.cn
%         i@finalobject.cn
%         https://github.com/finalObject
% @date 2017Äê4ÔÂ1ÈÕ 16:50:21
% @version 0.1

function [x,y,z]=getSurByEquation(percision)
    startP = -29.5;
    endP = 30.5;
    [x y] = meshgrid(startP:percision:endP);
    z=zeros(length(x),length(x));
    for ii = 1:length(x)
        for jj = 1:length(y)
            if x(ii,jj)<0
                z(ii,jj)=x(ii,jj)+y(ii,jj);
            else
                z(ii,jj)=1;
            end
        end
    end
    
    
    mesh(x,y,z);
end