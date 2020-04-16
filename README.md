# Matlab-utility
commonly used package

@ Ming-Chih, Hsiao

## [getImgByString](+Utility/getImgByString.m)
get string image without font file
```matlab

%%
stringAry = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789`~!@#$%^&*()-_=+[{]}\|;:",<.>/?''';
stringAryImg = Utility.getImgByString(stringAry);
% stringAryImg = imresize(stringAryImg, 10, 'nearest');
figure, imshow(stringAryImg)
```
<img src="https://github.com/b9903224/Matlab-utility/blob/master/demo/getImgByString/getImgByString(fontSize_12).png"/>

## [getEllipseBwImg](+Utility/getEllipseBwImg.m)
```matlab
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
imwrite(ellipseBwImg, 'ellipseBwImg_1.png')
```
![image](https://github.com/b9903224/Matlab-utility/blob/master/demo/getEllipseBwImg/ellipseBwImg_1.png)
