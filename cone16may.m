function cone16may(a,b,r,h)
axis([0 2*pi -10 10]);

plot([-r r]+a,[0 0]+b,'m');
hold on
%vv=plot([-r,0]+a,[0,h]+b,'m');
plot([r 0]+a,[0 h]+b,'m');


slope=h/r;

%y=slope*(x-a)+b+h;

%fplot(@(x) (slope*(x-a)+b+h) ,[-r+a,a])
%4 should be i (loop)
y= slope*(x-a)+b+h ==4;
[x,y] = solve('y= slope.*(x-a)+b+h','y=4')
%plot(x,3,'*');
