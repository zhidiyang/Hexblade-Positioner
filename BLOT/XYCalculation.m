% This is an example of the funtion to calculate the X, and Y data for FindFullBoundry.m 
% You should write your own code in this section.
% The input "Combination" should always be a vector consisting of all the input variables.
% The outputs X and Y are scalars.


% In this Specific case we are trying to plot X vs Y. 
function [X,Y] = XYCalculation(Combination)

C = Combination(1);
E = Combination(2);
F = Combination(3);
W = Combination(4);
t = Combination(5);
R = Combination(6);
G = Combination(7);
H = Combination(8);
L1 = Combination(9);
L2 = Combination(10);
Combination
run ..\SPIDRs_Positioner_Parameters_BLOT.m
parameterWeight = [1,1,1/4,1/304.6,1/304.6,0];
run ..\SPIDRs_Positioner_Assembly.m;

run ..\SPIDRs_Positioner_Stiffness_Matrix.m;

run ..\SPIDRs_Positioner_Mass_Matrix.m;

run ..\SPIDRs_Positioner_Range_BLOT.m;

X = sqrt(normalizedRange)
Y = minimalNaturalFrequency

end


