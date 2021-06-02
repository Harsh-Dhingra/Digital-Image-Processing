% Task 4

%Q4.2
I = double(imread("lena512.png"));
calcHaar(I,5);
imshow(l5/255);

e2 = []
p2 = []
for n = (1:5)
    for Q_step = [2 4 8 16 32 64 128]  
        haar_lena = calcHaar(I,n);
        quantised_image_lena = Q_step * round( haar_lena/ Q_step);
        e2 = [e2;calcEntropy(quantised_image_lena)];
        inv_haar = calcInvHaar(quantised_image_lena,1);
        p2 = [p2;psnr(inv_haar,I,255)];
    end
    
   
end
% Get the 7 x 5 matrix I need
% n=5 Q_step = 5
reshape(e2,[7,5])
reshape(p2,[7,5])

n = 1;
m = 7;


figure('Name', 'R-D curve for haar transform (level 1 to 5)');
plot(e(1:7), p(1:7), '-+');
hold on
plot(e(8:14), p(8:14), '-+');
plot(e(15:21), p(15:21), '-+');
plot(e(22:28), p(22:28), '-+');
plot(e(29:35), p(29:35), '-+');
hold off;
xlabel('Entropy bits/pixel');
ylabel('PSNR (dB)');
title('R-D curve for haar transform (level 1 to 5)');
legend('level 1','level 2','level 3','level 4','level 5');
