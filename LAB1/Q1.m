I = imread('lena512.png');
figure(1); image(I); colormap(gray(256)); axis image;
%I = double(imread('lena512.png'))/255; figure(2); image(I); axis image;

I1 = I + 128;
figure(2);image(I1);colormap(gray(256));shg;

I2 = I -128
figure(3);image(I2);colormap(gray(256));shg;

