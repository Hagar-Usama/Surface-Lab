
%x=[0,0,0,0,0,0,0];
r1=5;
r2=3;
c1=[-2,2];
c2=[-1,0];
l=1;
for i=1:10
    
   [xout,yout] = circcirc(-2,2,5,c2(1),c2(2),r2) ;
x=xout(l)
y=yout(l)
   plot(xout,yout,'o')
   disp(xout) % if r1 = 3 ans = NAN  NAN
   r2=r2- 0.1;
   if(r2<0)
       break;
   end
  
end