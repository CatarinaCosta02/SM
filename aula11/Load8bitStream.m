function [N,M,Stream] = Load8bitStream(Filename)
% função que le a informação contida no ficheiro comprimido
    fid = fopen(Filename,'rb');
    N = fread(fid,1,'uint16');
    M = fread(fid,1,'uint16');
    Stream = fread(fid,'uint8');
    fclose(fid);
end