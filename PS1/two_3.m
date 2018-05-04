iimg=imread('car.jpg');
oimg1=energy_img_modified(iimg);
imagesc(oimg1);

pause
oimg2=cumulative_min_energy_map(oimg1,"VERTICAL");
imagesc(oimg2);
pause
oimg3=cumulative_min_energy_map(oimg1,"HORIZONTAL");
imagesc(oimg3);



horizontalSeam=find_horizontal_seam(oimg3);
verticalSeam= find_vertical_seam(oimg2);

im1=imread('mat_car.jpg');
im2=imread('bubble.jpg');
im3=imread('bubble_out.jpg');
subplot(1,3,1),imshow(im1), title('mat-resize');
subplot(1,3,2),imshow(im2), title('Original');
subplot(1,3,3),imshow(im3), title('SeamCarving');



