%%
% get string image without font file
stringAry = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789`~!@#$%^&*()-_=+[{]}\|;:",<.>/?''';
% stringAry = ' ';
% stringAry = '''';
stringAryImg = Utility.getImgByString(stringAry);
% stringAryImg = imresize(stringAryImg, 10, 'nearest');
figure, imshow(stringAryImg)

%% save demo image
% imgFolderPath = fullfile(pwd, 'demo', 'getImgByString');
% mkdir(imgFolderPath)
% imwrite(stringAryImg, fullfile(imgFolderPath, 'getImgByString(fontSize_12).png'))