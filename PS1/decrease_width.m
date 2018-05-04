function [reducedColorImg,reducedEnergyImg] = decrease_width(im,energyImg)
[r,c,l]=size(im);
reducedColorImg=zeros(r,c-1,3);
reducedEnergyImg=zeros(r,c-1);
cumulativeEnergyMap=cumulative_min_energy_map(energyImg,'VERTICAL');
verticalSeam=find_vertical_seam(cumulativeEnergyMap);
view_seam(im,verticalSeam,"VERTICAL");
for i=1:r
   reducedColorImg(i,:,:)=[im(i,1:verticalSeam(i,1)-1,:),im(i,verticalSeam(i,1)+1:c,:)];
end
reducedEnergyImg=energy_img(reducedColorImg);
reducedColorImg=uint8(reducedColorImg);
end