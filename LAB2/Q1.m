I = double(imread("atoms1.png"))/255;
figure('Name','atoms1.png');
imshow(I);

%q1.1

h0 = [1 3 1;3 9 3;1 3 1]/25;

% q1.2

I0 = conv2(I,h0, 'same');
figure('Name','1');
imshow(I0);

% q1.3

a = [1; 3; 1]/5;
b = [1 3 1]/5;
h0_1D = a * b;

% q1.4

I1 =  conv2(conv2(I,a,'same'),b,'same');
figure('Name','2');
imshow(I1);

% q1.5

Mean_Absolute_Error = mae(I0, I1);
% mae is a network performance function which measures mean absolute error.