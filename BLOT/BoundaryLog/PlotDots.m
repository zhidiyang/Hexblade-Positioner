function  PlotDots( Xmin,Ymin )
global Xvec Yvec Ncal
global NcalOld
if isempty(NcalOld)
    NcalOld=1;
end
Xplot=Xvec(NcalOld:Ncal-1);
Yplot=Yvec(NcalOld:Ncal-1);
plot(Xplot((Xplot>Xmin)&(Yplot>Ymin)),Yplot((Xplot>Xmin)&(Yplot>Ymin)),'.k');
NcalOld=Ncal;
set(gca,'XScale','log');set(gca,'YScale','log');
xlabel('Normalized Range / m');
ylabel('First Natural Frequency / Hz');
title('Tradeoff Between Range and Natural Frequency')
grid on
drawnow;
end

