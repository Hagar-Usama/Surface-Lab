R1=2;
R2=2;
for i=-3:0.5:1.5
% Center of the circles
C1=[0,0];
C2=[3,0];
% Radius of the circles
% x1(x,y) on the first circle satisfy the following equation:
%(x1(1)-C1(1))^2+(x1(2)-C1(2))^2-R1^2=0
% x2(x,y) on the second circle satisfy the following equation:
%(x2(1)-C2(1))^2+(x2(2)-C2(2))^2-R2^2=0;
% once intersecting we have:
% x1(1)=x2(1);
% x1(2)=x2(2);
% then 
F=@(x) ([(x(1)-C1(1))^2+(x(2)-C1(2))^2-R1^2; ...
         (x(1)-C2(1))^2+(x(2)-C2(2))^2-R2^2]);
%opt=optimoptions(@fsolve);
%opt.Algorithm='levenberg-marquardt';
%opt.Display='off';
x=fsolve(F,[C1(1),C1(1)+R1]);
% plotting 1st point of intersection
plot(x(1),x(2),'o')
hold on

%printf('First intersection point: (%f,%f)\n',x(1),x(2));
x= fsolve(F,[C1(1),C1(1)-R1]);
plot(x(1),x(2),'*')

   
%fprintf('Second intersection point: (%f,%f)\n',x(1),x(2));
R2=R2-0.2;


end

