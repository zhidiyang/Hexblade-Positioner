function [] = SaveToFile()
% function [] = SaveToFile(iJ, Imaxvec)
global Ncal Xvec Yvec AllGeovec

% mkdir .\Data_Archive
fid = fopen('.\Data_Archive\archive_data.txt','w');
for k=1: (Ncal-1) %Last line of All_matrix is a repeat
   fprintf(fid,repmat('%.12f\t',1,length(AllGeovec(:,k))+1)+"%.12f\n",AllGeovec(:,k),Xvec(k),Yvec(k));
end
fclose(fid);

end