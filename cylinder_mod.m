function cylinder_mod(a,b,r,h,z)
x1=a-r;
x2= a+r;
y1=b;
y3= b+h;
%% elevation %%
plot([x1,x2],[y1,y1],'r',[x2,x2],[y1,y3],'g',[x2,x1],[y3,y3],'m',[x1,x1],[y3,y1]);

hold on
axis('equal')

%% plan %%
angle=linspace(0,2*pi,360);
x2=r*cos(angle)+a;
y2=r*sin(angle)-z;
plot(x2,y2);
