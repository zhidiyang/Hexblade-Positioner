% In this function you specify the geometric constraints.
% The input "Combination" should always be a vector consisting of all the input variables.


function [Inequality, Equality] = GeoConstraint(Combination)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Please DO NOT edit this part
% Combination=Combination(:);
global Resolution,
Combination=Round2Res(Combination,Resolution);
Equality = [];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%dat=[T L r t teta I O];

%% In this part you specify your variables and specify you inequality constraints.

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

nowTestGeoConstraint = Combination

run ..\SPIDRs_Positioner_Parameters_BLOT.m

violateGeometricConstraints = -1;

run ..\SPIDRs_Positioner_Geometric_Constraints_Preassembly.m;

if violateGeometricConstraints == -1
	run ..\SPIDRs_Positioner_Assembly_Without_Inertia.m
	run ..\SPIDRs_Positioner_Geometric_Constraints.m;
end

Inequality = -ones(12,1); 
if violateGeometricConstraints ~= -1
	Inequality(violateGeometricConstraints) = violateGeometricConstraintsAmount;
end



end