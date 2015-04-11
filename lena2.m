%niaokaia = imread('NiaoKai.JPG');
lena = imread('Lenna.png');
subplot(2,2,1), image(lena), title('Lenna original');
%gaussianFilter = [1/9 1/9 1/9; 1/9 1/9 1/9; 1/9 1/9 1/9];
gaussianFilter = [1,4,7,4,1;4,20,33,20,4;7,33,55,33,7;4,20,33,20,4;1,4,7,4,1];
gaussianFilter = gaussianFilter / sum(sum(gaussianFilter));
gaussianLenna = imfilter(lena, gaussianFilter);
subplot(2,2,2), image(gaussianLenna), title('Gaussian Lenna');
test = lena-gaussianLenna;
subplot(2,2,3), image(test), title('Lenna - Gaussian Lenna');
multiply = test*6;
subplot(2,2,3), image(multiply), title('Multiply');
sharpLena = gaussianLenna +multiply;
subplot(2,2,4), image(sharpLena), title('Sharp Lenna (sharper than original)');