lena = imread('Lenna.png');%Lenna.png NiaoKai.JPG
subplot(2,2,1), image(lena), title('Lena original');
c=2;
%highpass= [0 0 0; 0 1 0; 0 0 0] - 1/9*[1 1 1; 1 1 1; 1 1 1]; %all pass - low pass
%sharpLena = imfilter(lena, gaussianFilter);
gaussianFilter = [1,4,7,4,1;4,20,33,20,4;7,33,55,33,7;4,20,33,20,4;1,4,7,4,1];
gaussianFilter = gaussianFilter / sum(sum(gaussianFilter));
lena = imfilter(lena,gaussianFilter);
allpass = [0 0 0; 0 1 0; 0 0 0];
highpass = [-1 -1 -1; -1 8 -1; -1 -1 -1];
ahighpass = allpass+ c*highpass;

y = imfilter(lena, ahighpass);
subplot(2,2,2), image(y), title('High-boost filtering');

