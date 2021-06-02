%Q3

%Q3.1
%For loop for every quantisation step
I = double(imread("lena512.png"));

e = [];
p = [];
for Q_step = [2 4 8 16 32 64 128]

quantised_image = Q_step * round( I/ Q_step);
%entropy of quantised image
e = [e;calcEntropy(quantised_image)];

% Q1.4 Get the psnr
p = [p;psnr(quantised_image,I,255)];
end 

figure; plot(e, p, '-+');
xlabel('Entropy bits/pixel');
ylabel('PSNR (dB)');
title('R-D Curve for both transformation and no transformation');

%Q3.2
% Do Haar transform, decode using calcInvHaar, compute psnr
% Mak

% Q3.2
e1 = [];
p1 = [];
for Q_step = [2 4 8 16 32 64 128]
    haar_lena = calcHaarLevel1(I);
    quantised_image_lena = Q_step * round( haar_lena/ Q_step);
    e1 = [e1;calcEntropy(quantised_image_lena)];
    inv_haar = calcInvHaar(quantised_image_lena,1);
    p1 = [p1;psnr(inv_haar,I,255)];
end

figure; plot(e1, p1,e,p, '-+');
xlabel('Entropy bits/pixel');
ylabel('PSNR (dB)');
title('R-DDD Curve for no transformation ');

