
Q_step = 15;
picture = double(imread("lena512.png"));
haar_lena = calcHaarLevel1(picture);
figure(6); imshow(haar_lena/256);
title('1-Level Haar Transform');
%Q2.2
quantised_image_lena = Q_step * round( haar_lena/ Q_step);
Hqhar = calcEntropyHaar(quantised_image_lena,1)




%2.4
inv_haar = calcInvHaar(quantised_image_lena,1);
figure(7); imshow(inv_haar/256);
title('Inverse Haar')