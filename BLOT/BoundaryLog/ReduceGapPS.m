function [Nadd] = ReduceGapPS(Fname,IniGuess,Xrange,Yrange)
%This function calculates the minimum value of fucntion 'Fname'. With the
%given LB UB Resolution and GeoConstraint(). The algorithm is PatternSearch.  

%This algorithm find the local minimum relatively well, and if it is trapped in a basin, there a chance to get out of the basin. 


global Ncal LB UB Resolution dth
% global AllGeovecOri
RFactor=20;
ObjectiveFunction = Fname;
ConstraintFunction = @GeoConstraint;
psOptions=psoptimset('MeshAccelerator','on','TolMesh',min(Resolution),'TolX',min(Resolution),'CompletePoll','on','Display', 'off','TolFun',dth/RFactor*min(Xrange,Yrange));
%%

NcalStart=Ncal;
[~,~] =  patternsearch(ObjectiveFunction,IniGuess,[],[],[],[],LB,UB, ConstraintFunction,psOptions);
Nadd=Ncal-NcalStart;

end