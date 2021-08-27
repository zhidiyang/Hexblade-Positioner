function [Ibdrych,Ibdryfine] = BoundaryPointsLog(Xmin,Ymin)

BoundaryFittingControl=1;   % Change from 0 to 1. 1 is the most conforming boundary.

global Xvec Yvec Ncal

Iallvec=1:Ncal-1;
Iplotvec=Iallvec((Xvec(1:Ncal-1)>Xmin)&(Yvec(1:Ncal-1)>Ymin));
LogX=log10(Xvec(Iplotvec))';
LogY=log10(Yvec(Iplotvec))';


ich=boundary(LogX,LogY,BoundaryFittingControl); % ch=Convex Hull, find the conjvex hull index. The vector start from the smallest index and rotates counter-clockwise.
Ichvec=Iplotvec(ich);      % Boundary points (Xvec(Ichvec),Yvec(Ichvec))
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Modify this part to determine which section of the boundary does not need
% minimizing.
k=2;
[~,ichstart]=max(LogY(ich)-k*LogX(ich));% Find upper left corner point of Convex Hull Points in log-log
[~,ichend]=min(k*LogY(ich)-LogX(ich));% Find lower right corner point of Convex Hull Points in log-log

if ichstart<=ichend % Check if the lower left section covers the breat point of the boundary
    ibdrych=ichstart:ichend; %The index of lower left part of the boundary that does not need gap minimizing.
else
    ibdrych=[ichstart:length(ich),2:ichend];%The index of lower left part of the boundary that does not need gap minimizing.
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%    
Ibdrych=Ichvec(ibdrych);%The points of lower left part of the boundary that does not need gap minimizing: (Xvec(Ibdrynm),Yvec(Ibdrynm))


itbdry=boundary(LogX,LogY,BoundaryFittingControl);% tbdry=True Boundary, find the most conforming boundary index
Itbdryvec=Iplotvec(itbdry);
itbdrystart=find(Itbdryvec==Ibdrych(end),1);
itbdryend=find(Itbdryvec==Ibdrych(1),1);
if itbdrystart<itbdryend % Check if the lower left section covers the breat point of the boundary
    ibdryfine=itbdrystart:itbdryend; %The index of lower left part of the boundary that does not need gap minimizing.
else
    ibdryfine=[itbdrystart:length(itbdry),2:itbdryend];%The index of lower left part of the boundary that does not need gap minimizing.
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%    
Ibdryfine=Itbdryvec(ibdryfine);%The points of lower left part of the boundary that does not need gap minimizing: (Xvec(Ibdrynm),Yvec(Ibdrynm))

end

