

name = "C:\Users\harsh\Desktop\matlab\lena512.png";
I = imread(name);

% Q3.1
p1 = [];
e1 = [];

for Q_step = [2 4 8 16 32 64 128]
    pic = Q_step * round(I/Q_step);
    e1(end+1) = calcEntropy(pic);
    p1(end+1) = psnr(I, pic, 255);
end

figure('Name', 'no transform');
plot(e1, p1, '-+');
xlabel('Entropy bits/pixel');
ylabel('PSNR (dB)');
title('R-D curve for no transformation');

% Q3.2
I = double(I);
p2 = [];
e2 = [];

pic = calcHaarLevel1(I);
for Q_step = [2 4 8 16 32 64 128]
    I_new = Q_step * round(pic/Q_step);
    e2(end+1) = calcEntropyHaar(I_new, 1);
    I_new = calcInvHaar(I_new, 1);
    p2(end+1) = psnr(I, I_new, 255);
end

figure('Name', 'no transform vs 1 level haar');
plot(e1, p1, 'r-+');
hold on
plot(e2, p2, 'b-+');
hold off
xlabel('Entropy bits/pixel');
ylabel('PSNR (dB)');
title('R-D curve for no transformation VS level 1 Haar 2D transform');
legend('no transformation','level 1 haar transform');

figure('Name', '1 level haar transform');
plot(e2, p2, 'r-+');
xlabel('Entropy bits/pixel');
ylabel('PSNR (dB)');
title('R-D curve for 1 level haar transformation');