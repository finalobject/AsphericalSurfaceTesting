q1=0.1/180*pi;
w1=0.1/180*pi;
e1=0.1/180*pi;
q2=90/180*pi;
w2=90/180*pi;
e2=90/180*pi;
theta1=acot(cot(w1/2)*sin((q1+e1)/2));
f1=atan(tan((q1-e1)/2));
x1=sin(f1)*cos(theta1);
y1=sin(f1)*sin(theta1);
z1=cos(f1);
a1=[x1,y1,z1];

theta2=acot(cot(w2/2)*sin((q2+e2)/2));
f2=atan(tan((q2-e2)/2));
f1=atan(tan((q1-e1)/2));
x2=sin(f2)*cos(theta2);
y2=sin(f2)*sin(theta2);
z2=cos(f2);
a2=[x2,y2,z2];

theta = acos(dot(a1,a2)/(norm(a1)*norm(a2)));


