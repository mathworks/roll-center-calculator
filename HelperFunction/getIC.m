function [X1,Y1,Z1,X2,Y2,Z2,x_intersect,y_intersect,z_intersect] = GetIC(P1,P2,P3,P4,P5,P6)

% Combine two upper points, P2 and P3, into New P1
X1 = [P1(1),(P2(1)+P3(1))/2];
Y1 = [P1(2),(P2(2)+P3(2))/2];
Z1 = [P1(3),(P2(3)+P3(3))/2];

% Combine two Lower points, P5 and P6, into New P4
X2 = [P4(1),(P5(1)+P6(1))/2];
Y2 = [P4(2),(P5(2)+P6(2))/2];
Z2 = [P4(3),(P5(3)+P6(3))/2];

% Find Instant Center of two linwe
p1 = polyfit(Y1,Z1,1);
p2 = polyfit(Y2,Z2,1);
y_intersect = fzero(@(x) polyval(p1-p2,x),1);
z_intersect = polyval(p1,y_intersect);
x_intersect = (P1(1) + P4(1))/2;
