function [J] = JbfromlogXY(X,Y,iJ)
% This function calculates boundary objective function based on X and Y
% values.
% Any modification of the objective function should be done in this file.
global nJbdry
theta=linspace(-pi/2,pi,nJbdry+1);
J=sin(theta(iJ))*log10(X)+cos(theta(iJ))*log10(Y);
if isinf(J)
    J=nan;
end

end

