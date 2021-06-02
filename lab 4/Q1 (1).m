

% Q1.1
name = "C:\Users\harsh\Desktop\matlab\lena512.png";
I = im2gray(imread(name));
Ho = calcEntropy(I);

% Q1.2
Q_step = 15;
pic = Q_step * round(I/Q_step);
Hqi = calcEntropy(pic);

% Q1.4
psnr = psnr(I, pic, 255);

% Q1.5
figure('Name', 'unqantised image'); imshow(I);
figure('Name', 'qantised image'); imshow(pic);