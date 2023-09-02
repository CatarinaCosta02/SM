function Save8bitImage(Filename,Image)

% guarda num ficheiro a informação relativa à matriz Image
%  The number of rows is stored in a variable called "n" 
% and the number of columns is stored in a variable called "m"
[n,m] = size(Image);

N = uint16(n); % primeiros 2 bytes
M = uint16(m); % 2 bytes seguintes
fid = fopen(Filename,'w');

fwrite(fid,N,'uint16');
fwrite(fid,M,'uint16');
fwrite(fid,Image,'uint8'); % restantes bytes
fclose(fid);
end