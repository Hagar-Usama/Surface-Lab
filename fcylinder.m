function fcylinder(a2,b2,r2,h2,z2)
x1=a2-r2;
x2= a2+r2;

y1=b2-z2;
y3= y1-h2;
%% plan %%
plot([x1,x2],[y1,y1],'r',[x2,x2],[y1,y3],'g',[x2,x1],[y3,y3],'m',[x1,x1],[y3,y1]);
hold on;
plot([a2,a2],[y1,y3],'r-.');

axis('equal')

%% elevation %%
circle (a2,b2+r2,r2);
