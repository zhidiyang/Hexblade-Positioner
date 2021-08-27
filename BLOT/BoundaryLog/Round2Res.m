function CombRound = Round2Res(Combination,Resolution)
% Thsi function discritize the input vector "Combination" according to the
% given "Resolution".
CombRound=nan(size(Combination));
for i =1: length(Combination)
    CombRound(i)=floor(Combination(i)/Resolution(i)+0.5)*Resolution(i);
end
end