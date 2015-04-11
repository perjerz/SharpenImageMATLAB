%http://www.aquaphoenix.com/lecture/matlab10/page3.html
%niaokaia = imread('NiaoKai.JPG');
lena = imread('Lenna.png');
subplot(2,2,1), image(lena), title('Lena original');
%gaussianFilter = [1/9 1/9 1/9; 1/9 1/9 1/9; 1/9 1/9 1/9];%mean filter
gaussianFilter = [1,4,7,4,1;4,20,33,20,4;7,33,55,33,7;4,20,33,20,4;1,4,7,4,1];
gaussianFilter = gaussianFilter / sum(sum(gaussianFilter));
gaussianLena = imfilter(lena, gaussianFilter);
subplot(2,2,2), image(gaussianLena), title('Gaussian Lenna');
edgeFilter = [-1,-1,-1;-1,8,-1;-1,-1,-1] %Laplace Operator Second Differentiate
edgeLena = 1*imfilter(gaussianLena, edgeFilter);
subplot(2,2,3), image(edgeLena), title('Edges from Blurred niaokai');
sharpLena = gaussianLena +edgeLena;
subplot(2,2,4), image(sharpLena), title('Sharp lenna (sharper than original)');