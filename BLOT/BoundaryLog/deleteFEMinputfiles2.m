function []=deleteFEMinputfiles2()
    

filename1 = '/u/scratch2/a/ahatamiz/GEORESULT';
if exist(filename1, 'file')
    delete('/u/scratch2/a/ahatamiz/GEORESULT');
end


filename1 = '/u/scratch2/a/ahatamiz/GEOactive.txt';
if exist(filename1, 'file')
    delete('/u/scratch2/a/ahatamiz/GEOactive.txt');
end


end