% @author finalObject
%         http://www.finalobject.cn
%         i@finalobject.cn
%         https://github.com/finalObject
% @date 2017年4月7日 14:49:35
% @version 0.5
function k=getFitEuq(xm,ym,zm)
    % 待拟合方程：F = z^2 = (-c^2/a^2*x^2) + (c^2/a^2*2*x1*x) + (- c^2/b^2*y^2) +
    %                      (c^2/b^2*2*y1*y) + (2*z1*z) +
    %                      (-c^2/a^2*x1^2 - c^2/b^2*y1^2 - z1^2 + c^2)
    % x,y,z 均要先转化为列向量
    % k(1) = -c^2/a^2 
    % k(2) = c^2/a^2*2*x1
    % k(3) = - c^2/b^2
    % k(4) = c^2/b^2*2*y1
    % k(5) = 2*z1
    % k(6) = -c^2/a^2*x1^2 - c^2/b^2*y1^2 - z1^2 + c^2
    %返回的是一个一维数组，储存六个参数
    [x,y,z]=extract(xm,ym,zm);
    x=x';y=y';z=z';
    xdata = [x,y,z];
    ydata = z.^2;  %% 先把 z 值平方，再进行拟合
    k0 = ones(1,6);  %% k 的运行初值，不会影响最终结果
    
    F = @(k,xdata) k(1)*xdata(:,1).^2 + k(2)*xdata(:,1) + k(3)*xdata(:,2).^2 + k(4)*xdata(:,2) + k(5)*xdata(:,3) + k(6);
    k=lsqcurvefit(F,k0,xdata,ydata);

    x1 = -k(2)/k(1)/2;
    y1 = -k(4)/k(3)/2;
    z1 = k(5)/2;
    c = sqrt(z1^2 + k(6) - k(1)*x1^2 - k(3)*y1^2);
    a = c/sqrt(-k(1));
    b = c/sqrt(-k(3));
end
%这个函数完成点的提取，并吧数据转化成一维数组
function [x,y,z]=extract(xm,ym,zm)
    side = 10;%默认提取10*10个点，考虑修改
    sizeX = size(xm);
    loc = round(linspace(1,sizeX(1),side));
    x = zeros(1,side*side);
    y = zeros(1,side*side);
    z = zeros(1,side*side);
    for i=1:side*side
        locX = mod(i,side);
        locY = (i-locX)/side+1;
        if locX == 0
            locX = 10;
            locY = locY-1;
        end
        tmpX = loc(locX);
        tmpY = loc(locY);
        x(i) = xm(tmpX,tmpY);
        y(i) = ym(tmpX,tmpY);
        z(i) = zm(tmpX,tmpY);
    end
end


