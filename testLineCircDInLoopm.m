r3=5; a1=0; b1=0;
circle(a1,b1,r3);
hold on;
for i=0:0.1:r3
[R,x,y] = lineCircD(0,i,a1,b1,r3)
    disp(R);
end