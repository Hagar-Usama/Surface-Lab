function []=cylinder(a,b,r,h)
plot([-r,r]+a,[0,0]+b,'b')
hold on
plot([r,r]+a,[0,h]+b,'b')
plot([-r,r]+a,[h,h]+b,'b')
plot([-r,-r]+a,[0,h]+b,'b')

axis('equal')
angle=linspace(0,2*pi,360);
x2=r*cos(angle)+a;
y2=r*sin(angle)-10;
plot(x2,y2);
