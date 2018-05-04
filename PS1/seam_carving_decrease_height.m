function reducedColorImg = seam_carving_decrease_height()

reducedColorImg=imread('inputSeamCarvingPrague.jpg');
eimg=energy_img(reducedColorImg);
for i=1:50
   [reducedColorImg,eimg] = decrease_height(reducedColorImg,eimg);
   eimg=energy_img(reducedColorImg);
end
imwrite(reducedColorImg,'outputReduceHeightPrague.png');

reducedColorImg=imread('inputSeamCarvingMall.jpg');
eimg=energy_img(reducedColorImg);
for i=1:50
   [reducedColorImg,eimg] = decrease_height(reducedColorImg,eimg);
   eimg=energy_img(reducedColorImg);
end
imwrite(reducedColorImg,'outputReduceHeightMall.png');
end