function circle(a,b,r)

angle=linspace(0,2*pi,360);
x2=r*cos(angle)+a;
y2=r*sin(angle)+b;
plot(x2,y2);
axis('equal');
grid on;