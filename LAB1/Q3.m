I = imread('tennis.png');


figure(2)
histogram(I(:, :, 1), 256)
title('R component', 'FontSize', 18)
 
figure(3)
histogram(I(:, :, 2), 256)
title('G component', 'FontSize', 18)
 
figure(4)
histogram(I(:, :, 3), 256)
title('B component', 'FontSize', 18)

img = rgb2ycbcr(I);

figure(5)
histogram(img(:, :, 1), 256)
title('Y component', 'FontSize', 18)


figure(6)
histogram(img(:, :, 2), 256)
title('Cb component', 'FontSize', 18)

figure(7)
histogram(img(:, :, 3), 256)
title('Cr component', 'FontSize', 18)