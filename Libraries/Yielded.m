function [YorN,MaxMises] = Yielded(OneConst,TotalForces)
%This function returns a 1 for yes or a 0 for no as to whether a beam
%yields.  OneConst contains the constraint's info and TotoalForces is a 1x6
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
G = OneConst(1,14);  %Shear modulus
yieldstrength = OneConst(1,16);  %Yeild strength

I1 = w*(t^3)/12;
I2 = t*(w^3)/12;

MaxMises = 0;

for x = (-w/2):(w/2):(w/2)
    for y = (-t/2):(t/2):(t/2)
        for z = 0:l:l
            
            %Calculate the shear stresses from Torsion
            if (M3 ~= 0)
                %These are calculated from FEA and may change in the future
                %Cone = (1+(((4*G*G/((4*G*E)-(E*E)))-1)*(1/(1+((l/(t*0.35))^2.5)))))^(-1);
                %Ctwo = (1+(((4*G*G/((4*G*E)-(E*E)))-1)*(1/(1+((l/(w*0.64))^1.8)))))^(-1);
                %Cthree = (1+(((4*G*G/((4*G*E)-(E*E)))-1)*(1/(1+((l/(w*0.35))^2.5)))))^(-1);
                %Cfour = (1+(((4*G*G/((4*G*E)-(E*E)))-1)*(1/(1+((l/(t*0.64))^1.8)))))^(-1);
                
                TempJ = 0;
                if (w>=t)
                    for n = 1:2:7
                        TempJ = TempJ+(tanh(n*pi*w/(2*t))/(n^5));
                    end
                    J = ((t^3)*w/3)*(1-((192*t/((pi^5)*w))*TempJ));
                    %TorAngle = Cone*Ctwo*l*M3/(G*J);
                    TorAngle = M3/(G*J);
                    Temp = 0;
                    n = 1;
                    error = 1;
                    while error > 1e-10
                        TempNext = Temp+((((-1)^((n-1)/2))*cos(n*pi*x/w)*sinh(n*pi*y/w))/(n*n*cosh(n*pi*t/(2*w))));
                        error = abs(TempNext-Temp);
                        n = n+2;
                        Temp = TempNext;
                    end
                    S13Tor = -Temp*(8*G*TorAngle*w/(pi^2));
                    Temp = 0;
                    n = 1;
                    error = 1;
                    while error > 1e-10
                        TempNext = Temp+((((-1)^((n-1)/2))*sin(n*pi*x/w)*cosh(n*pi*y/w))/(n*n*cosh(n*pi*t/(2*w))));
                        error = abs(TempNext-Temp);
                        n = n+2;
                        Temp = TempNext;
                    end
                    S23Tor = (2*G*TorAngle*x)-(Temp*(8*G*TorAngle*w/(pi^2)));
                else
                    for n = 1:2:7
                        TempJ = TempJ+(tanh(n*pi*t/(2*w))/(n^5));
                    end
                    J = ((w^3)*t/3)*(1-((192*w/((pi^5)*t))*TempJ));
                    %TorAngle = Cthree*Cfour*l*M3/(G*J);
                    TorAngle = M3/(G*J);
                    Temp = 0;
                    n = 1;
                    error = 1;
                    while error > 1e-10
                        TempNext = Temp+((((-1)^((n-1)/2))*sin(n*pi*y/t)*cosh(n*pi*(-x)/t))/(n*n*cosh(n*pi*w/(2*t))));
                        error = abs(TempNext-Temp);
                        n = n+2;
                        Temp = TempNext;
                    end
                    S13Tor = -(2*G*TorAngle*y)+(Temp*(8*G*TorAngle*t/(pi^2)));
                    Temp = 0;
                    n = 1;
                    error = 1;
                    while error > 1e-10
                        TempNext = Temp+((((-1)^((n-1)/2))*cos(n*pi*y/t)*sinh(n*pi*(-x)/t))/(n*n*cosh(n*pi*w/(2*t))));
                        error = abs(TempNext-Temp);
                        n = n+2;
                        Temp = TempNext;
                    end
                    S23Tor = -Temp*(8*G*TorAngle*t/(pi^2));
                end
                
            else
                S13Tor = 0;
                S23Tor = 0;
            end
            
            %Combine these shear stresses with those from bending with a tangential force
            
            S13 = ((F1/(2*I2))*(((w/2)^2)-(x^2)))+S13Tor;
            S23 = ((F2/(2*I1))*(((t/2)^2)-(y^2)))+S23Tor;
            
            %Calculate the axial stress at the base of the flexure (z = 0) and top (z = l)
            S33 = (F3/(w*t))-(F1*x*(l-z)/I2)-(F2*y*(l-z)/I1)+(M1*y/I1)-(M2*x/I2);
            
            %Calculate the Mises stress at a point (x,y,0)
            Mises = sqrt((S33^2)+(3*((S13^2)+(S23^2))));
            
            if (Mises>=MaxMises)
                MaxMises = Mises;
            end
        end
    end
end

if (MaxMises>=yieldstrength)
    YorN = 1;  %It has yielded
else
    YorN = 0;  %It has not yielded
end

end