function [Imin1, FlagJmax] = ReduceGapLong(Igap,Xrange,Yrange,Imaxvec)
% This function finds the minimum of the Jgap objective function by
% repeatedly switch between SQP and PS algorithm until we reach a point
% that both SQP and PS consider that point as the min point.

global Ncal Xvec Yvec AllGeovec JCvec
for i=1:Ncal-1
    JCvec(i)=JgapinXY(Xvec(i),Yvec(i),Igap);
end
FlagJmax=false;
Imin0=Igap(1);
Imin1=Igap(2);

while Imin0~=Imin1
    Imin0=Imin1;
    try
        ReduceGapSQP(@(Combination)Jgap(Combination,Igap), AllGeovec(:,Imin1),Xrange,Yrange);
    catch
        ReduceGapPS(@(Combination)Jgap(Combination,Igap), AllGeovec(:,Imin1),Xrange,Yrange);
    end
    [~,Imin1]=min(JCvec);
    if ~RealImax(Imaxvec)
        FlagJmax=true;
        break
    end
    
    ReduceGapPS(@(Combination)Jgap(Combination,Igap), AllGeovec(:,Imin1),Xrange,Yrange);
    [~,Imin1]=min(JCvec);
    if ~RealImax(Imaxvec)
        FlagJmax=true;
        break
    end
end

end

