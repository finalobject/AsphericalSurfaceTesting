% @author finalObject
%         http://www.finalobject.cn
%         i@finalobject.cn
%         https://github.com/finalObject
% @date 2017Äê4ÔÂ7ÈÕ 11:48:22
% @version 0.1
%[x1,y1,z1]=getSurByEquation(0.1);
%mesh(x1,y1,z1);
[x1,y1,z1]=getSurByFit(k,600);
[x2,y2,z2]=getSurByPCD();
mesh(x1,y1,z1);