function aimg = energy_img_modified(iimg)
aimg=col_gray(iimg);
aimg = im2double(aimg);
[dx,dy] = imgradient(aimg,'prewitt');
aimg=((dx.^2)+(dy.^2)).^(1/2);
end

