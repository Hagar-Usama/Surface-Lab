function [x,y] = lineCircL (m,xs,xe,c,d,a,b,r) % valid for any line

%for i=b:0.1:b+r
segma = (1+m.^2)*r.^2-(b-m*a-d).^2;

    if (segma > 0)
    dis = sqrt(segma);
    xout1= (a+b*m-d*m+dis)/(1+m.^2); % replace all d with i
    xout2= (a+b*m-d*m-dis)/(1+m.^2);
    % if (xout1>xe && xout1<xs && xout2>xe && xout2<xs)
      %   x=[xout1,xout1];
     %end
    yout1= m*xout1+d;
    yout2= m*xout2+d;
    x=[xout1,xout2];
    y=[yout1,yout2];
   
        
  %  R= double(abs(xout1-xout2)/2);
   %% plot(x,y,'.');
    %hold on;
    elseif (segma == 0)
            xout1= (a+b*m-d*m)/(1+m.^2);
            yout1= m*xout1+d;
            xout2=xout1;
            yout2=yout1;
           %% plot(xout1,yout1,'*');
            x=[xout1,xout2];
            y=[yout1,yout2];
            %hold on;
    %        R=0.000001;                         % R should be zero 
    else 
        xout1= NaN;
        yout1= NaN;
        xout2=xout1;
        yout2=yout1;
            
        x=[xout1,xout2];
         y=[yout1,yout2];
      %   R= NaN;
     %disp ('NaN');
    end  
    
    if (xout1 >= xs && xout1 <= xe )
             if(xout2>= xs && xout2 <=xe)
                % case 3 ==> default
                flag = 3;
            elseif (xout2<xs || xout2> xe)
                % case 1
                flag = 1;
            end 
   elseif (xout2 >= xs && xout2 <= xe ) 
            if (xout1<xs || xout1 > xe )
                % case 2
                flag= 2; 
            end
        
   else 
        % case 0
        flag = 0;
    end
  
    switch flag
        case 0
            disp('my NaN');
            
         case 1
             plot(xout1,yout1,'.');
             plot(xout1,c,'r.');
            % x=[xout1,xout1];
             %y=[yout1,yout1];
        case 2
             plot(xout2,yout2,'.');
             plot(xout2,c,'r.');
             %x=[xout1,xout1];
             %y=[yout1,yout1];

        case 3
             plot([xout1,xout2],[yout1,yout2],'.');
             plot(xout1,c,'r.');
             plot(xout2,c,'r.');

             %x=[xout1,xout2];
             %y=[yout1,yout2];
        otherwise
            disp('something went wrong mosh 3arfa b2a');
    end
    
%end
   
   
    % copyright Hagar Osama 
    %last modifictation 27/6/2017
    % Source : http://www.ambrsoft.com/TrigoCalc/Circles2/circlrLine_.htm
    
    
    
%end