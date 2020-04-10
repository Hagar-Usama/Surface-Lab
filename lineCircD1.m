function [x,y]= lineCircD1 (m,yc1,ymax,a,b,r) % for horizontal lines only (not true)
for i=yc1:0.2:ymax
segma = (1+m.^2)*r.^2-(b-m*a-i).^2;

if (segma > 0)
    dis = sqrt(segma);
    xout1= (a+b*m-i *m+dis)/(1+m.^2);
    xout2= (a+b*m- i *m-dis)/(1+m.^2);
    yout1= m*xout1+i;
    yout2= m*xout2+i;
    x=[xout1,xout2];
    y=[yout1,yout2];
    
    plot(x,y,'o');
    hold on;
elseif (segma == 0)
            xout1= (a+b*m-i*m)/(1+m.^2);
            yout1= m*xout1+i;
            xout2=xout1;
            yout2=yout1;
            plot(xout1,yout1,'*');
            x=[xout1,xout2];
            y=[yout1,yout2];
            hold on;
            
else 
  
     disp ('NaN');
end
end

% Last modification 27/6/2017
% source : http://www.ambrsoft.com/TrigoCalc/Circles2/circlrLine_.htm