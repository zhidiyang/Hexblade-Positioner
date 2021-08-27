function [J] = JgaplogXY(X,Y,Igap)
% This function calculates distance between (X,Y) and the middle point of
% the gap.
global Xvec Yvec
LogX1=log10(Xvec(Igap(1)));
LogY1=log10(Yvec(Igap(1)));
LogX2=log10(Xvec(Igap(2)));
LogY2=log10(Yvec(Igap(2)));

% Finding a smaller gap means finding a smaller J function.
Vec1=[log10(X)-LogX1,log10(Y)-LogY1];
Vec2=[log10(X)-LogX2,log10(Y)-LogY2];
OutVec=[LogY2-LogY1,-(LogX2-LogX1)]; % This vector is perpendicular to Igap vector and points outward.
OutVecNormal=OutVec/norm(OutVec);
VecSign=sign(OutVecNormal*Vec1');

% Optiona 1: Calculate the square sum of the distance between the point and the gap ends
% J=Vec1*Vec1'+Vec2*Vec2';

% Option 2: Sum additional part to J so that the point is pushed outward
Ofactor=2.5;% This indicates the further outward the better. 
J=Vec1*Vec1'+Vec2*Vec2'-VecSign*Ofactor*(OutVecNormal*Vec1')^2;

end
