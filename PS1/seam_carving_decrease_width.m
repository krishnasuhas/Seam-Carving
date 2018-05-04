function reducedColorImg = seam_carving_decrease_width()

reducedColorImg=imread('inputSeamCarvingPrague.jpg');
eimg=energy_img(reducedColorImg);
for i=1:100
   [reducedColorImg,eimg] = decrease_width(reducedColorImg,eimg);
   eimg=energy_img(reducedColorImg);
end
imwrite(reducedColorImg,'outputReduceWidthPrague.png');

reducedColorImg=imread('inputSeamCarvingMall.jpg');
eimg=energy_img(reducedColorImg);
for i=1:100
   [reducedColorImg,eimg] = decrease_width(reducedColorImg,eimg);
   eimg=energy_img(reducedColorImg);
end
imwrite(reducedColorImg,'outputReduceWidthMall.png');
end