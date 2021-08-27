function  Maxpoints=PlotMaxDots( Xmin,Ymin,Imaxvec )
global Xvec Yvec
Xmax=Xvec(Imaxvec);
Ymax=Yvec(Imaxvec);
Maxpoints=plot(Xmax((Xmax>Xmin)&(Ymax>Ymin)),Ymax((Xmax>Xmin)&(Ymax>Ymin)),'.','MarkerSize',20);
drawnow;
end

