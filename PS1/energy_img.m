function aimg = energy_img(iimg)
aimg=col_gray(iimg);
aimg = im2double(aimg);
[dx,dy] = gradient(aimg);
aimg=((dx.^2)+(dy.^2)).^(1/2);
end

