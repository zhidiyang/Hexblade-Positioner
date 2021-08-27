function [J] = Jgap(Combination,Igap)
% This function calculate the distance between the (X,Y) calculated from
% "Combination" to the middle point of (X(Igap),Y(Igap))

global Ncal Xvec Yvec AllGeovec LB UB Resolution nJbdry JVvec JCvec

Combination=Round2Res(Combination,Resolution);              % Discretize every parameter
[TorF,Iexist] = CheckExisting(Combination,Resolution);

if TorF
    J=JCvec(Iexist);
else
    
    [Inequality, ~] = GeoConstraint(Combination);
    if any(Combination(:)>UB(:))||any(Combination(:)<LB(:))||any(Inequality>=0)
        J=nan;
    else
        
%                  disp('Start Cal')
        AllGeovec(:,Ncal)=Combination(:);
        [X, Y] = XYCalculation(Combination);
        J=JgapinXY(X,Y,Igap);
%                  disp('End Cal')

        Xvec(Ncal)=X;
        Yvec(Ncal)=Y;
        for i=1:nJbdry
            JVvec(i,Ncal)=JbinXY(X,Y,i);
        end
        JCvec(Ncal)=JgapinXY(X,Y,Igap);
        Ncal=Ncal+1;
    end
end



end

