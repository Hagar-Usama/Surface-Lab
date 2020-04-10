function [x,y]= myCircCirc(a1,b1,r1,a2,b2,r2,i) % make sure to make i optional 
%i=NaN;
x=a2-a1; % delta x
y=b2-b1; %delta y
d=sqrt(x.^2 +y.^2);  % the distance between 2 centers
 % if d>(r1+r2) --> no intersection , d<(r1+r2) --> 2 points , d=r1+r2 -->
 % tangent point 

 % important case not mentioned : case circle are identical tangent points
 % are the circle 
    if (d<r1+r2 && d> abs(r2-r1))
    
        segma = 0.25*sqrt((d+r1+r2)*(d+r1-r2)*(d-r1+r2)*(-d+r1+r2));
        p1= 0.5*(a1+a2);
        p2= ((a2-a1)*(r1.^2-r2.^2))/(2*d.^2);
        p3= 2*(b1-b2)/d.^2;
        x1=p1+p2+p3*segma;
        x2= p1+p2-p3*segma;
    
        p4 =  0.5*(b1+b2);
        p5= ((b2-b1)*(r1.^2-r2.^2))/(2*d.^2);
        p6= 2*(a1-a2)/d.^2;
        y1 = p4 + p5 - p6*segma;
        y2 = p4 + p5 + p6*segma;
    
        flag = 1;

        elseif (d==r1+r2 || d==abs(r2-r1))
        % segma = 0;
        p1= 0.5*(a1+a2);
        p2= ((a2-a1)*(r1.^2-r2.^2))/(2*d.^2);
        % p3= 2*(b1-b2)/d.^2; % *segma == zero
        x1=p1+p2;

        p4 =  0.5*(b1+b2);
        p5= ((b2-b1)*(r1.^2-r2.^2))/(2*d.^2);
        %p6= 2*(a1-a2)/d.^2; % *segma == zero
        y1 = p4 + p5; 
        flag = 2;   
    else 
        flag = 0;
    end

switch flag
    case 1
        x=[x1,x2];
        y=[y1,y2];
        plot (x,y,'c*');
        plot(x1,i,'r.');
        plot(x2,i,'r.');

    case 2
        x= [x1,x1];
        y=[y1,y1];
        plot(x1,y1,'g*');
        plot(x1,i,'>');
    case 15
        disp('nothing down')

    otherwise
        disp('NaN :(')
end
% 28/6/2017
%Hagar Osama
% Last modification 28/6/2017
%source : http://www.ambrsoft.com/TrigoCalc/Circles2/circle2intersection/CircleCircleIntersection.htm