I = double(imread("lena512.png"));
% Q1.2 Quantise the image and find entropy
Q_step = 15
quantised_image = Q_step * round( I/ Q_step);
Hqi = calcEntropy(quantised_image)
figure(1); histogram(I,2048);
figure(2); histogram(quantised_image,2048);

% Q1.4 Get the psnr
peaksnr = psnr(quantised_image,I,255);

%Q1.5 Compare two images
figure(3); imshow(I/256);
title('Org Image')
figure(4); imshow(quantised_image/256);
title('Image after Quantization')

