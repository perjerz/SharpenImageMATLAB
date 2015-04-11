%http://www.aquaphoenix.com/lecture/matlab10/page3.html
%niaokaia = imread('NiaoKai.JPG');
lena = imread('Lenna.png');
c=1;
subplot(2,2,1), image(lena), title('Lena original');
delta = [0 0 0; 0 1 0; 0 0 0];
ydelta = imfilter(lena,delta);
subplot(2,2,2), image(ydelta), title('Convolute with Delta functionSame picture');
laplcian = [-1 -1 -1; -1 8 -1; -1 -1 -1];
laplciana = [0 0 1 0 0; 0 1 2 1 0; 1 2 -16 2 1; 0 1 2 1 0;0 0 1 0 0];
ylaplacian = imfilter(lena,laplcian);
subplot(2,2,3), image(ylaplacian), title('Convolute with Laplcian(Edge detection)');
log = [1 1 1; 1 -8 1; 1 1 1];
ylog= imfilter(lena,log);
subplot(2,2,4), image(ylog), title('Convolute with Log(Edge detection with reduce noise)');

