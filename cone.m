function[]=cone(a,b,r,h,z)
%% elevation %%

plot([a-r,a+r],[b,b],[a+r,a],[b,b+h],'g',[a,a-r],[b+h,b],'r');
hold on;
plot([a,a],[b,b+h],'r-.');
  
%% plan %% 
circle (a,b-r-z,r);

