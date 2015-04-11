%http://www.aquaphoenix.com/lecture/matlab10/page3.html
%niaokaia = imread('NiaoKai.JPG');
lena = imread('Lenna.PNG');
c=1;
subplot(2,2,1), image(lena), title('Lena original');
gaussianFilter = [1,4,7,4,1;4,20,33,20,4;7,33,55,33,7;4,20,33,20,4;1,4,7,4,1];
gaussianFilter = gaussianFilter / sum(sum(gaussianFilter));
%mean = [1/16 1/16 1/16 1/16; 1/16 1/16 1/16 1/16; 1/16 1/16 1/16 1/16; 1/16 1/16 1/16 1/16];
bright = [1/4 1/4; 1/4 1/4];
gaussianLenna = imfilter(lena, gaussianFilter);
subplot(2,2,2), image(gaussianLenna), title('Gaussian Lenna');
laplcian = [-1 -1 -1; -1 8 -1; -1 -1 -1];
gaussiantolaplcian = imfilter(gaussianLenna,laplcian);
a = imfilter(lena,laplcian);
%subplot(2,2,2), image(a, title('Edge detection (Laplacian) without Blurring');
subplot(2,2,3), image(gaussiantolaplcian), title('Gaussian-> Laplcian Lenna = (GOS)Edge detection');
sharpLena = gaussianLenna+gaussiantolaplcian;
subplot(2,2,4), image(sharpLena), title('Sharp Lena');

