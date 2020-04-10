l=1;
for i=1: 1 :10
    y(l)=i+rand;
      x(l)=i*2-rand;
        l=l+1;
end
%plot(y,'*');

   %x=[1 2 3 4 5 6 7 8 9 10];
%y=[1.2012e-03   2.3046e-03   2.8067e-03   3.0078e-03   5.7281e-03   5.2235e-03   6.7391e-03   7.1429e-03   6.3348e-03   1.0698e-02];

s=x;
n=y;
  %x=[x(1) x(2) x(3) x(4) x(5) x(6) x(7) x(8) x(9) x(10)];
   %y=[y(1) y(2) y(3) y(4) y(5) y(6) y(7) y(8) y(9) y(10)];

xi=1:0.01:10; % hya nafsha x bas b step -- matnsee4 n da 7aykoon l i beta3na (y) l2no sabt
yi=interp1(s,n,xi,'spline');
plot(xi,yi)

