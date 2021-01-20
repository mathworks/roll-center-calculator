function [Xfr,Yfr,Zfr,Xfl,Yfl,Zfl,Xrr,Yrr,Zrr,Xrl,Yrl,Zrl] = GetTireData(Track,WheelBase,TireWidth,TireRadius)

n = 100;   
[X,Y,Z] = cylinder(TireRadius,n);
Z = TireWidth * Z;

Xfr = X+TireRadius;
Yfr = Y;
Zfr = Z + Track/2 - TireWidth/2;

Xfl = X+TireRadius;
Yfl = Y;
Zfl = Z - Track/2 - TireWidth/2;

Xrr = X+TireRadius;
Yrr = Y + WheelBase;
Zrr = Z + Track/2 - TireWidth/2;

Xrl = X+TireRadius;
Yrl = Y + WheelBase;
Zrl = Z - Track/2 - TireWidth/2;