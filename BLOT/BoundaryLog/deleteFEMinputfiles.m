function []=deleteFEMinputfiles()
    

filename1 = '/u/scratch2/a/ahatamiz/staticRESULT';
if exist(filename1, 'file')
    delete('/u/scratch2/a/ahatamiz/staticRESULT');
end


filename1 = '/u/scratch2/a/ahatamiz/active.txt';
if exist(filename1, 'file')
    delete('/u/scratch2/a/ahatamiz/active.txt');
end


end