function [Jmax1, Imax1] = FindMax(iJ, StartPoint)
% This function finds the largest objective function that is corresponding
% to index iJ.
% The basic idea of this numerical method is to repeatedly switch between SQP and PS algorithm until we reach a point
% that both SQP and PS consider that point as the max point.

global  AllGeovec JVvec

[~,Imax0]=max(JVvec(iJ,:));
try
    
    FindMaxSQP(@(Combination)Jbfun(Combination,iJ), StartPoint);
    
catch
    [~,Imax1]=max(JVvec(iJ,:));
    FindMaxPS(@(Combination)Jbfun(Combination,iJ), AllGeovec(:,Imax1));
    % FindMaxPS(@(Combination)Jbfun(Combination,iJ), StartPoint);
end
[~,Imax1]=max(JVvec(iJ,:));
FindMaxPS(@(Combination)Jbfun(Combination,iJ), AllGeovec(:,Imax1));
% FindMaxPS(@(Combination)Jbfun(Combination,iJ), StartPoint);
[Jmax1,Imax1]=max(JVvec(iJ,:));

while Imax0~=Imax1
    Imax0=Imax1;
    try
        FindMaxSQP(@(Combination)Jbfun(Combination,iJ), AllGeovec(:,Imax1));
    catch
        [~,Imax1]=max(JVvec(iJ,:));
        FindMaxPS(@(Combination)Jbfun(Combination,iJ), AllGeovec(:,Imax1));
    end
    [~,Imax1]=max(JVvec(iJ,:));
    FindMaxPS(@(Combination)Jbfun(Combination,iJ), AllGeovec(:,Imax1));
    [Jmax1,Imax1]=max(JVvec(iJ,:));
end


end
