I = imread('jfk.png');

img = rgb2gray(I);
figure(1)
imshow(img);
title('RGB2GRAY', 'FontSize', 18)
figure(2)
hist(img(:),0:255)
title('histogram', 'FontSize', 18)
