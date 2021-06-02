

name = "C:\Users\harsh\Desktop\matlab\lena512.png";
I = imread(name);
Q_step = 15;
Iqi = Q_step * round(I/Q_step);
I = double(I);

% Q2.1
X = calcHaarLevel1(I);

% Q2.2
Y = Q_step * round(X/Q_step);
Hqhaar = calcEntropyHaar(Y, 1);

% Q2.3

Hqi = calcEntropy(Iqi);

% % Q2.4
figure('Name', 'Original Image');imshow(I/255);
I_new = calcInvHaar(Y, 1);
figure('Name', 'Decoded Haar Image');
imshow(I_new/255);