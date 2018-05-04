function aimg = energy_img_modified2(iimg)
aimg=col_gray(iimg);
aimg = im2double(aimg);
[dx,dy] = imgradient(aimg,'central');
aimg=((dx.^2)+(dy.^2)).^(1/2);
end

