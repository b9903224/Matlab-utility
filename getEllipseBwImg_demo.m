imgH = 512;
imgW = 1024;
ellipseBwImg = [];
ellipseBwImg = Utility.getEllipseBwImg(imgH, imgW, 256, 512, 64, 128, 15, ellipseBwImg);
ellipseBwImg = Utility.getEllipseBwImg(imgH, imgW, 128, 256, 32, 64, -30, ellipseBwImg);
ellipseBwImg = Utility.getEllipseBwImg(imgH, imgW, 256+128, 256, 32, 64, 30, ellipseBwImg);
ellipseBwImg = Utility.getEllipseBwImg(imgH, imgW, 512, 256+512, 512, 64, 30, ellipseBwImg);
ellipseBwImg = Utility.getEllipseBwImg(imgH, imgW, 512, 256, 64, 512, 0, ellipseBwImg); 
ellipseBwImg = Utility.getEllipseBwImg(imgH, imgW, 256, 90, 128, 64, 0, ellipseBwImg); 
ellipseBwImg = Utility.getEllipseBwImg(imgH, imgW, 87, 685, 512, 30, -45, ellipseBwImg); 
figure, imshow(ellipseBwImg)
imwrite(ellipseBwImg, '.\demo\ellipseBwImg_1.png')