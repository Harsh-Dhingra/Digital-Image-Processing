pic = imread('tennis.png');

r = pic(:, :, 1);
g = pic(:, :, 2);
b = pic(:, :, 3);

mask = (r >= 38 & r <= 56 & g >= 77 & g <= 110 & b >= 132 & b <= 160);

figure('Name', 'MASK')
imshow(mask)
title('Mask', 'FontSize', 18)

figure('Name', 'RED')
imshow((r >= 38 & r <= 56))
title('RED', 'FontSize', 18)

figure('Name', 'GREEN')
imshow((g >= 77 & g <= 110))
title('GREEN', 'FontSize', 18)

figure('Name', 'BLUE')
imshow((b >= 132 & b <= 160))
title('BLUE', 'FontSize', 18)


