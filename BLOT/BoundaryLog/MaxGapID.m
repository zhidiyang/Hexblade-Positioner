function [dmax,Igap,Xrange,Yrange]=MaxGapID(Ibdryfine)
global Xvec Yvec dmaxskip
Tol=1e-8;
dmaxjump=min(dmaxskip)-Tol;

LogX=log10(Xvec(Ibdryfine));
Xrange=max(LogX)-min(LogX);
Xdis=abs(diff(LogX));
Xdis(Xdis>=dmaxjump*Xrange)=0;
[Xgap,Ixgap]=max(Xdis);

LogY=log10(Yvec(Ibdryfine));
Yrange=max(LogY)-min(LogY);
Ydis=abs(diff(LogY));
Ydis(Ydis>=dmaxjump*Yrange)=0;
[Ygap,Iygap]=max(Ydis);

[dmax,xy]=max([Xgap/Xrange,Ygap/Yrange]);
if xy==1
    Igap=[Ibdryfine(Ixgap),Ibdryfine(Ixgap+1)];
else
    Igap=[Ibdryfine(Iygap),Ibdryfine(Iygap+1)];
end

end

