function [ TorF ] = RealImax(Imaxvec)
global JVvec
[~,Imaxcheck]=max(JVvec,[],2);

TorF=all(Imaxcheck==Imaxvec);
end

