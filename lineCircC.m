function [x,y]= lineCircC (m,x1,y1,a,b,r)
d= -m*x1+y1;
segma = (1+m.^2)*r.^2-(b-m*a-d).^2;

if (segma > 0)
    dis = sqrt(segma);
    xout1= (a+b*m-d*m+dis)/(1+m.^2);
    xout2= (a+b*m-d*m-dis)/(1+m.^2);
    yout1= m*xout1+d;
    yout2= m*xout2+d;
    x=[xout1,xout2]
    y=[yout1,yout2]
    
    plot(x,y,'o');
elseif (segma == 0)
            xout1= (a+b*m-d*m)/(1+m.^2)
            yout1= m*xout1+d
            plot(xout1,yout1,'*');
            x=[xout1];
            y=[yout1];
            
            
else 
  
     disp ('NaN');
     
end

% Last modification 27/6/2017
% Source http://www.ambrsoft.com/TrigoCalc/Circles2/circlrLine_.htm