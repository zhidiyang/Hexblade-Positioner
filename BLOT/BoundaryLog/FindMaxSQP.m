function [Nadd] = FindMaxSQP(Fname, IniGuess)
%This function calculates the minimum value of fucntion 'Fname'. With the
%given LB UB Resolution and GeoConstraint(). The algorithm is SQP. 

%This algorithm find local minimum pretty well, but once it is trapped with
%one basin, there is no chance to get out of the basin. 


global Ncal LB UB Resolution
% global AllGeovecOri

ObjectiveFunction = Fname;
ConstraintFunction = @GeoConstraint;
fminOptions=optimoptions('fmincon','FinDiffRelStep',Resolution,'FinDiffType','central','Algorithm','sqp','TolX',min(Resolution),'Display', 'off');
%%
% IniGuess
NcalStart=Ncal;
[~,~] =  fmincon(ObjectiveFunction,IniGuess,[],[],[],[],LB,UB, ConstraintFunction,fminOptions);
Nadd=Ncal-NcalStart;

end