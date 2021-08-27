% Place the Boundary Tracking Tool folder in your current directory. Then
% run this script. This will add the boundary function to your current directory. 
clc;clear;
% foldername1='/u/home/a/ahatamiz/Desktop/BLOT/LogBoundary/BoundaryLog';
% cd(foldername1)
global Ncal NcalOld Xvec Yvec AllGeovec JVvec JCvec dmaxskip
global LB UB Resolution nJbdry dth

addpath .\BoundaryLog\
addpath ..\Libraries\

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% This is the Problem Setup section.
% Before you attempt to run this, please double check 
% "GeoConstraints.m" file and your "XYCalculation.m"
nvarsX = 10;  % Number of variables

inch = 25.4E-3;

minParameter_C = 0.25*inch;
maxParameter_C = 2*inch;
stepParameter_C = 0.25*inch;

minParameter_E = 2.1*inch;
maxParameter_E = 10*inch;
stepParameter_E = 0.1*inch;

minParameter_F = 0.01*inch;
maxParameter_F = 2*inch;
stepParameter_F = 0.01*inch;

minParameter_W = 0.125*inch;
maxParameter_W = 20*inch;
stepParameter_W = 0.125*inch;

minParameter_t = 0.01*inch;
maxParameter_t = 2*inch;
stepParameter_t = 0.01*inch;

minParameter_R = 0.4*inch;
maxParameter_R = 20*inch;
stepParameter_R = 0.4*inch;

minParameter_G = 0.04*inch;
maxParameter_G = 20*inch;
stepParameter_G = 0.04*inch;

minParameter_H = 0.4*inch;
maxParameter_H = 20*inch;
stepParameter_H = 0.4*inch;

minParameter_L1 = 0.4*inch;
maxParameter_L1 = 40*inch;
stepParameter_L1 = 0.4*inch;

minParameter_L2 = 0.4*inch;
maxParameter_L2 = 40*inch;
stepParameter_L2 = 0.4*inch;

LBX =        [minParameter_C,minParameter_E,minParameter_F,minParameter_W,minParameter_t,minParameter_R,minParameter_G,minParameter_H,minParameter_L1,minParameter_L2];                    % Lower bound
UBX =        [maxParameter_C,maxParameter_E,maxParameter_F,maxParameter_W,maxParameter_t,maxParameter_R,maxParameter_G,maxParameter_H,maxParameter_L1,maxParameter_L2];                    % Upper bound
ResolutionX	= [stepParameter_C,stepParameter_E,stepParameter_F,stepParameter_W,stepParameter_t,stepParameter_R,stepParameter_G,stepParameter_H,stepParameter_L1,stepParameter_L2];

IniGuessX =  [0.5*inch,2.5*inch,0.04*inch,1*inch,0.04*inch,3.6*inch,0.4*inch,7.6*inch,3.6*inch,6*inch];

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% Do not change these if you don't know what you are doing:
nJbdryX=60;                  % Number of boundary objective functions.
dthX=0.05;                   % Gap Loop Threshold
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Xmin=1e-12;  % Smallest X we care about
Ymin=1e-12;   % Smallest Y we care about
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% Do not change these if you don't know what you are doing:
nJbdry=30;                  % Number of boundary objective functions.
dth=0.08;                   % Gap Loop Threshold
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Main Function
tic
FindBoundary(nvarsX,LBX,UBX,ResolutionX,IniGuessX,Xmin,Ymin,nJbdryX, dthX);
toc