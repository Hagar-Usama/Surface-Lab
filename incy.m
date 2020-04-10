function incy(a,b,r,h,theta,z) % theta tt4al 34an han7welaha radian fi prog b-ta3na
if (theta ==90)
a=a+r;
end

theta = theta * pi /180;  % convert to radian
x1= a;
x2=a+h*cos(theta);
x3= x2-2*r*sin(theta);
x4= a-2*r*sin(theta);

xc1= a-r*sin(theta);
xc2= x2-r*sin(theta);

y1= b;
y2= b+h*sin(theta);
y3= y2 + 2*r*cos(theta);
y4= b+2*r*cos(theta);

yc1 = b+r*cos(theta);
yc2= y2 +r*cos(theta);

plot([x1,x2],[y1,y2]);
axis('equal')
hold on;

%% elevation %%
plot([x2,x3],[y2,y3], 'r' ,[x3,x4],[y3,y4],'g',[x4,x1],[y4,y1],'m');

plot([xc1,xc2],[yc1,yc2],'r-.'); % centerline up :)

%% Plan %%
if (theta ~=pi/2) 
y5= y1 -z;
y6 = y5-2*r;
yc3= y5-r;

plot([x4,x4],[y5,y6],'m',[x4,x2],[y6,y6],'b',[x2,x2],[y6,y5],'r',[x2,x4],[y5,y5],'g');
plot ([x4,x2],[yc3,yc3],'r-.');

%% side view %%
x=x2+2*r;
y= y1 -z -r;

circle (x,y,r)

else 
    circle(a-r,b-z-r,r) %Note Spacing from a4er no2ta fo2 li awel no2ta t7t
end

disp('theta == ')
disp (theta);
% Copyright Hagar Osama
% Last modification 27/6/2017