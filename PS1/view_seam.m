function a = view_seam(im,seam,seamDirection)
[r,c,l]=size(im);
if strcmp(seamDirection,'VERTICAL')
for i=1:r
    im(i,seam(i,1),1)=255;
    im(i,seam(i,1),2)=0;
    im(i,seam(i,1),3)=0;
end
end

if strcmp(seamDirection,'HORIZONTAL')
for i=1:c
    im(seam(i,1),i,1)=255;
    im(seam(i,1),i,2)=0;
    im(seam(i,1),i,3)=0;
end    
end
imshow(im);
end
