
inch = 25.4E-3;
sr3 = sqrt(3);

D = 0;
tabThickness = 1/4*inch;

parameterActuatorShellDiameter = 2*inch;
parameterActuatorInnerDiameter = 1.7*inch;
parameterActuatorShellLength = 1.25*inch;
parameterActuatorTotalLength = 2.15*inch;
parameterActuatorCapLength = 0.5*inch;
parameterActuatorGap = (E-parameterActuatorShellDiameter)/2;
parameterActuatorEstimatedCoilLength = 8.5E-3;

parameterBracketThickness = 0.125*inch;
parameterBracketUpperBase = 0.25*inch;
parameterBracketLowerBase = 0.5*inch;
parameterBracketClearance = 1E-3;
parameterBracketGap = 0.1*inch;

parameterActuatorHousingMobileThickness = 0.3*inch;
parameterActuatorHousingGroundedThickness = 0.4*inch;
parameterActuatorHousingGroundedDepth = 0.2*inch;
parameterActuatorHousingGroundedStroke = 20E-3;

parameterActuatorHousingBladeThickness = F;

parameterCoilStroke = 0.75*inch;
parameterCoilAssemblyMass = 103E-3;

A = parameterActuatorHousingMobileThickness+2*parameterActuatorGap+parameterActuatorShellDiameter+parameterActuatorHousingGroundedThickness;
B = parameterActuatorTotalLength+2*parameterBracketLowerBase+2*parameterBracketClearance+2*parameterActuatorHousingBladeThickness;

pointNozzleHolderBottomCenter = [0;0;0];
n1n2n3WholeStructure = eye(3);

% 7075 Alloy
rho = 2.81E3;
YoungsModulus = 71.7E9;  % Youngs modulus % Aluminum
ShearModulus = 26.9E9;  % Shear modulus % Aluminum
YieldStrength = 420E6;  % Yield strength % Aluminum
