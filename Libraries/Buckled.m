function [YorN] = Buckled(OneConst,TotalForces)
%This function returns a 1 for yes or a 0 for no as to whether a beam
%buckles.  OneConst contains the constraint's info and TotoalForces is a 1x6
%vector of forces and moments [F1 F2 F3 M1 M2 M3].

format long;

F1 = TotalForces(1,1);
F2 = TotalForces(1,2);
F3 = TotalForces(1,3);
M1 = TotalForces(1,4);
M2 = TotalForces(1,5);
M3 = TotalForces(1,6);

l = OneConst(1,10);  %length
w = OneConst(1,11);  %width
t = OneConst(1,12);  %thickness
E = OneConst(1,13);  %Youngs modulus

I1 = w*(t^3)/12;
I2 = t*(w^3)/12;

%Calculating the critical load assuming fixed-fixed end conditions
Pcr1 = (4*pi*pi*E*I1)/(l*l);
Pcr2 = (4*pi*pi*E*I2)/(l*l);

if (Pcr1<=Pcr2)
    Pcr = Pcr1;
else
    Pcr = Pcr2;
end

if (F3<0 && abs(F3)>=Pcr)
    YorN = 1;  %It has buckled
else
    YorN = 0;  %It has not buckled
end

end