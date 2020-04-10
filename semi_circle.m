function []= semi_circle(a,b,r,st3)
angle=linspace(0,pi,360);
x=r*cos(angle)+a;
y=r*sin(angle)+b;
plot(x,y);
hold on
plot([-r,r]+a,[b,b]);
x2=r*cos(2.*angle)+a;
y2=r*sin(2.*angle)-st3;
plot(x2,y2);
axis('equal')

for i=3:0.2:5
   [x,y]= linecirc(0,i,2,3,r);
  
   if (r<=0)
         break; end
    r=r-0.5;
    plot(x,y,'color',rand(1,4));
end

