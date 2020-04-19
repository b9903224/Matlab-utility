%%
% get string image without font file
stringAry = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789`~!@#$%^&*()-_=+[{]}\|;:",<.>/?''';
% stringAry = ' ';
% stringAry = '''';
stringAryImg = Utility.getImgByString_24(stringAry);
stringAryImg = imresize(stringAryImg, 10, 'nearest');
figure, imshow(stringAryImg)

%% save demo image
% imgFolderPath = fullfile(pwd, 'demo', 'getImgByString_24');
% mkdir(imgFolderPath)
% imwrite(stringAryImg, fullfile(imgFolderPath, 'getImgByString(fontSize_24)x10.png'))