lena = imread('Niaokai.jpg');
c=5;
subplot(2,2,1), image(lena), title('Lena original');
%highpass= [0 0 0; 0 1 0; 0 0 0] - 1/9*[1 1 1; 1 1 1; 1 1 1]; %all pass - low pass
%sharpLena = imfilter(lena, gaussianFilter);
original = imfilter(lena, [0 0 0; 0 1 0; 0 0 0]); 
blur = imfilter(lena, 1/9*[1 1 1; 1 1 1; 1 1 1]);
subplot(2,2,2), image(blur), title('Blur or Smooth');
edge=c*(original-blur);
%d=[0 0 0; 0 1 0; 0 0 0]-(1/9*[1 1 1; 1 1 1; 1 1 1]);
%sharp = imfilter(lena,d);
%e=imcompliment(e); black to white, white to black
subplot(2,2,3), image(edge), title('Edge = (Original - Blur)');
sharp= lena+edge;
subplot(2,2,4), image(sharp), title('Sharp');
