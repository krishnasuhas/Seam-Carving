function oimg = scdh(iimg)
iimg=imread(iimg);
oimg=energy_img_modified(iimg);
for i=1:100
   [iimg,oimg] = decrease_height(iimg,oimg);
   oimg=energy_img_modified(iimg);
end
imwrite(iimg,'car_out.jpg');
imshow(iimg);
end