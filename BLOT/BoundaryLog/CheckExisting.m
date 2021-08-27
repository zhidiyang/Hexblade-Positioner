function [TorF,Iexist] = CheckExisting(Combination,Resolution)
% This function checks if the given Combination has already been
% calculated.
global Ncal AllGeovec
Combination=(Combination(:));
Resolution=(Resolution(:));
for i=max(Ncal-1,1):-1:1
    
if all(abs(Combination-AllGeovec(:,i))<=Resolution/2)
    TorF=true;
    Iexist=i;
    break
else
    TorF=false;
    Iexist=0;
end
end

