function write(a,name)
        fid   = fopen(name,'w');
        [m,n] = size(a);
     for i=1:m
        for j=1:n
            if j==n
               fprintf(fid,'%g\n',a(i,j));
            else
               fprintf(fid,'%g\t',a(i,j));
            end
        end    
     end
    fclose(fid);
    judge    = exist('PSO_data');
    if judge ~= 7
        system('mkdir PSO_data');
    end
    file_path   = strcat(cd,'\PSO_data');
    movefile(name,file_path);
end