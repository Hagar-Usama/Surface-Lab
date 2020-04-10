function [xout,yout]= lineLineX(m1,d1,m2,d2,xs,xe)
    if (m1 ==0 && m2 ==0  || m1==inf && m2==inf ) % horizontal or vertical
    flag =0;
    x= NaN;
    y= NaN;
    else
    x = (d2-d1)/(m1-m2);
    y=m1*x+d1;
 
    
    flag = 1;
   
    end

    switch flag
    case 1 
        if (xs<= x && x<= xe)
            plot(x,y,'y.'); end
       
        case 0
            x= NaN; % actually inf not NaN
            y = NaN;
    end
xout = x;  yout =y;


% Hagar Osama 29/6/2017
% Last modification ....