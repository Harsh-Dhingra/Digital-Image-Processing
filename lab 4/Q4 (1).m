
name = "C:\Users\harsh\Desktop\matlab\lena512.png";
I = imread(name);
I = double(I);
% Q4.2
n = 5

e = [];
p = [];

l5 = calcHaar(I,5);
imshow(l5/255);

for n = [1 2 3 4 5]
    pic = calcHaar(I,n);
    for Q_step = [2 4 8 16 32 64 128]
        I_new = Q_step * round(pic/Q_step);
        e(end+1) = calcEntropyHaar(I_new, 1);
        I_new = calcInvHaar(I_new, 1);
        p(end+1) = psnr(I, I_new, 255);
    end
end

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