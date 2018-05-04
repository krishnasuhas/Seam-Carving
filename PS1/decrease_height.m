function [reducedColorImg,reducedEnergyImg] = decrease_height(im,energyImg)
[r,c,l]=size(im);
reducedColorImg=zeros(r-1,c,3);
reducedEnergyImg=zeros(r-1,c);
cumulativeEnergyMap=cumulative_min_energy_map(energyImg,'HORIZONTAL');
horizontalSeam=find_horizontal_seam(cumulativeEnergyMap);
view_seam(im,horizontalSeam,"HORIZONTAL");
for i=1:c
   reducedColorImg(:,i,:)=vertcat(im(1:horizontalSeam(i,1)-1,i,:),im(horizontalSeam(i,1)+1:r,i,:));
end
reducedEnergyImg=energy_img(reducedColorImg);
reducedColorImg=uint8(reducedColorImg);
imshow(reducedColorImg);
end