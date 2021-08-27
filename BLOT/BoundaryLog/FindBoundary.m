function [NcalX, XvecX, YvecX, AllGeovecX,IbdryX]=FindBoundary(nvarsX,    LBX,     UBX,     ResolutionX,     IniGuessX,	Xmin,	Ymin,	nJbdryX,     dthX)
%        FindBoundary(5,        [0.01, 0.001, 0.01, 0.01, 0.01], [0.5, 0.05, 0.5, 0.75, 0.75], [0.01, 0.001, 0.01, 0.01, 0.01], [0.33, 0.020, 0.10, 0.22, 0.15],    1e-8,   1e1,    30,     0.08)
warning('off','MATLAB:declareGlobalBeforeUse')

clearvars -global LB UB Resolution nJbdry dth Ncal NcalOld Xvec Yvec AllGeovec JVvec JCvec dmaxskip;
global Ncal NcalOld Xvec Yvec AllGeovec JVvec JCvec dmaxskip
global LB UB Resolution nJbdry dth

if (nargin~=9)||(length(LBX)~=nvarsX)||(length(UBX)~=nvarsX)||(length(ResolutionX)~=nvarsX)||(length(IniGuessX)~=nvarsX)
    disp('Wrong Input. Please check the input format. Refer to the first comment line.')
    return;
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Optimization Problem Setup
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
nvars=nvarsX;
LB=LBX(:)';
UB=UBX(:)';
Resolution=ResolutionX(:)';
IniGuess=IniGuessX(:)';
nJbdry=nJbdryX;
dth=dthX;


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Initialization, Memory Allocation
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Ncal=1;
NcalOld=1;
MaxFunCal = 2e3*nvars;                              % Expected number of calculation. 1000*nvars by default.
AllGeovec=nan(nvars,MaxFunCal);                     % All calculated combinations. After round them to resolution.
Xvec=nan(1,MaxFunCal);                              % All calculated X value
Yvec=nan(1,MaxFunCal);                              % All calculated Y value
JVvec=nan(nJbdry,MaxFunCal);                        % Convex boundary objective function.
Imaxvec=nan(nJbdry,1);                              % Maximum J value index
JCvec=nan(1,MaxFunCal);                             % Concave boundary objective functino. Deals with the gaps on the boundary.


Finishflag=false;                                   % Big Loop Step Flag
StartPoint=IniGuess;                                % Boundary Loop Parameter
iJ=1;                                               % Boundary Loop Parameter
Maxpoints=gobjects(0);                              % Initialize max point handle


% Read any data

fileID = fopen('.\Data_Archive\archive_data.txt','r');
if fileID > -1
    archive = fscanf(fileID,repmat('%f\t',1,nvars+1)+"%f\n", [nvars+2 Inf]);
    % archive = fscanf(fileID,'%f\t%f\t%f\t%f\t%f\n', [nvars+2 Inf]);
    fclose(fileID);

    [~, Ncal] = size(archive);
    AllGeovec(:,1:Ncal) = archive(1:nvars, :);
    Xvec(1:Ncal) = archive(nvars + 1, :);
    Yvec(1:Ncal) = archive(nvars + 2, :);
    for i=1:Ncal
        for j = 1:nJbdry
            JVvec(j,i) =  JbfromlogXY(Xvec(i),Yvec(i),j);
        end
    end

    Ncal = Ncal + 1;
end


%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Big Loop Starts
disp('Boundary Searching Starts!')
tic

while Finishflag==false;
    dmaxskip=nan(1,nJbdry);                             % Initialize skipping Gap
    % BoundaryLoop: Find Convex Boundary
    while iJ<=nJbdry
        delete(Maxpoints)
        [~, Imax]=FindMax(iJ, StartPoint);
        Imaxvec(iJ)=Imax;
        
        disp(['Ncal=',num2str(Ncal-1)])
        disp([num2str(iJ/nJbdry*100),'% Boundary Finished'])
        PlotDots( Xmin,Ymin )
        hold on
        Maxpoints=PlotMaxDots(Xmin,Ymin,Imaxvec(1:iJ));

        % SaveToFile(iJ, Imaxvec);
        SaveToFile();
        
        [~,Imaxcheck]=max(JVvec(1:iJ,:),[],2);
        if all(Imaxvec(1:iJ)==Imaxcheck)
            iJ=iJ+1;
        else
            iJ=find(Imaxvec(1:iJ)~=Imaxcheck,1);
            disp('New max found. Jump back to:')
        end
        [~,Imaxnext]=max(JVvec(min(iJ,nJbdry),:));
        StartPoint=AllGeovec(:,Imaxnext);
    end
    
    % Gap Loop: Find the largest Gap and minimize it
    [Ibdrych,Ibdryfine] = BoundaryPointsLog(Xmin,Ymin);
    [dmax,Igap,Xrange,Yrange]=MaxGapID(Ibdryfine);
    set(gcf,'KeyPressFcn','set(gca, ''UserData'',get(gcf,''CurrentCharacter''));');
    Gap=plot(Xvec(Igap),Yvec(Igap),'O','MarkerSize',20);
    Boundary=plot(Xvec([Ibdrych,Ibdryfine]),Yvec([Ibdrych,Ibdryfine]),'LineWidth',2);
    drawnow;
    SaveToFile();
    disp('Gap minimization started. Press p to PAUSE after current minimization process, press s to STOP after current minimization process.')
    while dmax>dth
        keyinput=get(gca, 'UserData');
        if ~isempty(keyinput)
            if strcmp(keyinput,'s'); Finishflag=true; break; end;
            if strcmp(keyinput,'p'); disp('Paused, Press Enter to Continue'),pause; set(gca, 'UserData',char.empty(0,0)); end;
        end
        dmax0=dmax;
        [~, FlagJmax] = ReduceGapLong(Igap,Xrange,Yrange,Imaxvec);
        if ~FlagJmax
            [~, FlagJmax] = ReduceGapLong(Igap([2,1]),Xrange,Yrange,Imaxvec);
        end
        PlotDots( Xmin,Ymin )
        [Ibdrych,Ibdryfine] = BoundaryPointsLog(Xmin,Ymin);
        [dmax,Igap,Xrange,Yrange]=MaxGapID(Ibdryfine);
        disp(['Largest gap: ',num2str(dmax*100),'% of the whole graph range. Circled in the Figure.'])
        if dmax0==dmax
            disp('Skipping the largest gap because no further reduction is possible.')
            dmaxskip(find(isnan(dmaxskip),1))=dmax0;
        end
        delete(Gap);delete(Boundary);
        Gap=plot(Xvec(Igap),Yvec(Igap),'O','MarkerSize',20);
        Boundary=plot(Xvec([Ibdrych,Ibdryfine]),Yvec([Ibdrych,Ibdryfine]),'LineWidth',2);
        drawnow;
        SaveToFile();
        
        if FlagJmax
            iJ=find(Imaxvec~=max(JVvec,[],2),1);
            disp('New boundary discovered. Restart boundary calculation:')
            delete(Gap);delete(Boundary);
            break;
        end
        if dmax<=dth
            Finishflag=true;break;
        end
    end
    
    
    
end
toc

delete(Gap);

NcalX=Ncal-1;
XvecX=Xvec(1:Ncal-1);
YvecX=Yvec(1:Ncal-1);
AllGeovecX=AllGeovec(:,1:Ncal-1);
IbdryX=[Ibdrych(:);Ibdryfine(:)]';
SaveToFile();
clearvars -global LB UB Resolution nJbdry dth Ncal JVvec JCvec dmaxskip;
% clearvars -global LB UB Resolution nJbdry dth Ncal Xvec Yvec AllGeovec JVvec JCvec dmaxskip;
warning('on','MATLAB:declareGlobalBeforeUse')
end