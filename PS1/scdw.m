function oimg = scdw(iimg)
iimg=imread(iimg);
oimg=energy_img(iimg);
for i=1:30
   [iimg,oimg] = decrease_width(iimg,oimg);
   oimg=energy_img(iimg);
end
imwrite(iimg,'car_out.jpg');
imshow(iimg);
end