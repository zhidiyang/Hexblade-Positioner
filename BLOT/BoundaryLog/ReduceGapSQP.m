function [Nadd] = ReduceGapSQP(Fname, IniGuess,Xrange,Yrange)
%This function calculates the minimum value of fucntion 'Fname'. With the
%given LB UB Resolution and GeoConstraint(). The algorithm is SQP. 

%This algorithm find local minimum pretty well, but once it is trapped with
%one basin, there is no chance to get out of the basin. 


global Ncal LB UB Resolution dth
% global AllGeovecOri
RFactor=10;
ObjectiveFunction = Fname;
ConstraintFunction = @GeoConstraint;
fminOptions=optimoptions('fmincon','FinDiffRelStep',Resolution,'FinDiffType','central','Algorithm','sqp','TolX',min(Resolution),'Display', 'off','ObjectiveLimit',dth/RFactor*min(Xrange,Yrange));
%%

NcalStart=Ncal;
[~,~] =  fmincon(ObjectiveFunction,IniGuess,[],[],[],[],LB,UB, ConstraintFunction,fminOptions);
Nadd=Ncal-NcalStart;

end