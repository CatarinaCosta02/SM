function Image = Load8bitImage(Filename)
% carrega a informação guardada no ficheiro criado na pergunta anterior

fid = fopen(Filename,'r');
N = fread(fid,1,'uint16')
M = fread(fid,1,'uint16')
Image = fread(fid,[N,M],'uint8');

fclose(fid);
