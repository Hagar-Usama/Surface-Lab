a1=0; b1=1; r1=5;
a2=3; b2=2; r2=6;
circle(a1,b1,r1);
hold on
circle(a2,b2,r2);
%[xout,yout] = circcirc(x1,y1,r1,x2,y2,r2)
for i=0:0.1:30
[x,y]= circcirc(a1,b1,r1,a2,b2,r2);
plot(x,y,'g*')
r2=r2-0.02;
if (isnan(x)) 
    break; end
%xr1=1.4303480629279;
%yr1=-3.7910441887837;
%plot(xr1,yr1,'o');
%disp (xout)
%%disp (yout)
end