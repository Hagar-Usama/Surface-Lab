xs=0;
xe=1;
a=[-1,0]; % ==> [0,1] case 2
check = [a(1)>=xs , a(2) <= xe ];
    i=[0,0]; % case 0
    ii=[1,0]; % case 1
    iii=[0,1]; % case 2
    iv= [1,1]; % case 3 

    %if ( check == i)
    %disp('yoooooooooooo');
    %end
    
    switch {check}
   case i
        disp('negative one')
    case ii
        disp('zero')
    case iii
        disp('positive one')
    otherwise
        disp('other value')
    end
   