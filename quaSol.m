function  [x] = quaSol (a,b,c)

dis = b.^2 -4*a*c ;

if ( dis > 1)
    x1 = (-b + sqrt(dis))/(2*a);
    x2= (-b - sqrt(dis))/(2*a);
    
    flag =1;
elseif (dis == 0)
     x1= (-b + sqrt(dis))/(2*a);
    
     flag = 2;
else 
    flag = 3;
end


switch flag
    case 1
        x= [x1,x2];
    case 2
        x= [x1,x1];
    case 3
        x= [NaN, NaN];
end