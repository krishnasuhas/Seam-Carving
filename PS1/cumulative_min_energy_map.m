function m = cumulative_min_energy_map(eimg,seamd)
if strcmp(seamd,'HORIZONTAL')
    eimg=transpose(eimg);
end
m=eimg;
[r,c]=size(eimg);
for i = 1:c
    for j = 2:r
        if i-1<1 
           m(j,i)=eimg(j,i)+min(m(j-1,i),m(j-1,i+1));
        elseif i+1>c 
           m(j,i)=eimg(j,i)+min(m(j-1,i-1),m(j-1,i));
        else
            m(j,i)=eimg(j,i)+min([m(j-1,i-1),m(j-1,i),m(j-1,i+1)]);
        end
    end
end
if strcmp(seamd,'HORIZONTAL')
    m=transpose(m);
end
end

