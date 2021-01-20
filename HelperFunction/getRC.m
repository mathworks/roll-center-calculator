function [x_intersect,y_intersect,z_intersect] = GetRC(X1,Y1,Z1,X2,Y2,Z2)

p1 = polyfit(Y1,Z1,1);
p2 = polyfit(Y2,Z2,1);

y_intersect = fzero(@(x) polyval(p1-p2,x),1);
z_intersect = polyval(p1,y_intersect);
x_intersect = (X1(1)+X2(1))/2;