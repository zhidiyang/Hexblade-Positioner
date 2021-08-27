function [J] = Jbfun(Combination,iJ)

global Ncal Xvec Yvec AllGeovec LB UB Resolution nJbdry JVvec
% global AllGeovecOri
% AllGeovecOri(:,Ncal)=Combination(:);

Combination=Round2Res(Combination,Resolution);              % Discretize every parameter
[TorF,Iexist] = CheckExisting(Combination,Resolution);

if TorF
    J=-JVvec(iJ,Iexist);
    % disp('1')
else
    
    [Inequality, ~] = GeoConstraint(Combination);
    if any(Combination(:)>UB(:))||any(Combination(:)<LB(:))||any(Inequality>=0)
        J=nan;
        % disp('2')
    else
        
        %         disp('Start Cal')
        AllGeovec(:,Ncal)=Combination(:);
        [X, Y] = XYCalculation(Combination);
        J=-JbinXY(X,Y,iJ);
        %         disp('End Cal')
        Xvec(Ncal)=X;
        Yvec(Ncal)=Y;
        for i=1:nJbdry
            JVvec(i,Ncal)=JbinXY(X,Y,i);
        end
        Ncal=Ncal+1;
        % disp('3')
    end
end
% J
end
