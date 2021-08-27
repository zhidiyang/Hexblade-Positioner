function [Nadd] = FindMaxPS(Fname, IniGuess)
%This function calculates the minimum value of fucntion 'Fname'. With the
%given LB UB Resolution and GeoConstraint(). The algorithm is PatternSearch.  

%This algorithm find the local minimum relatively well, and if it is trapped in a basin, there a chance to get out of the basin. 


global Ncal LB UB Resolution
% global AllGeovecOri

ObjectiveFunction = Fname;
ConstraintFunction = @GeoConstraint;
psOptions=psoptimset('MeshAccelerator','on','TolMesh',min(Resolution),'TolX',min(Resolution),'CompletePoll','on','Display', 'off');
%%
% IniGuess
NcalStart=Ncal;
[~,~] =  patternsearch(ObjectiveFunction,IniGuess,[],[],[],[],LB,UB, ConstraintFunction,psOptions);
Nadd=Ncal-NcalStart;

end