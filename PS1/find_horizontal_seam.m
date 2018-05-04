function horizontalSeam = find_horizontal_seam(m)
m=transpose(m);
horizontalSeam=find_vertical_seam(m);
end