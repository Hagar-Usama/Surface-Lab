function [R,x,y] = lineCircD (m,d,a,b,r) % valid for any line

%for i=b:0.1:b+r
segma = (1+m.^2)*r.^2-(b-m*a-d).^2;

    if (segma > 0)
    dis = sqrt(segma);
    xout1= (a+b*m-d*m+dis)/(1+m.^2); % replace all d with i
    xout2= (a+b*m-d*m-dis)/(1+m.^2);
    yout1= m*xout1+d;
    yout2= m*xout2+d;
    x=[xout1,xout2];
    y=[yout1,yout2];
    R= double(abs(xout1-xout2)/2);
    plot(x,y,'g.');
    
    %plot(x,y,'--gs',...
    %'LineWidth',2,...
    %'MarkerSize',10,...
    %'MarkerEdgeColor','b',...
    %'MarkerFaceColor',[0.5,0.5,0.5])
    hold on;
    elseif (segma == 0)
            xout1= (a+b*m-d*m)/(1+m.^2);
            yout1= m*xout1+d;
            xout2=xout1;
            yout2=yout1;
            plot(xout1,yout1,'*');
            x=[xout1,xout2];
            y=[yout1,yout2];
            hold on;
            R=0.000001;                         % R should be zero 
    else 
        xout1= NaN;
        yout1= NaN;
        xout2=xout1;
        yout2=yout1;
            
        x=[xout1,xout2];
         y=[yout1,yout2];
         R= NaN;
     disp ('NaN');
    end    
%end

% Last modification 27/6/2017
% Source http://www.ambrsoft.com/TrigoCalc/Circles2/circlrLine_.htm