% q2.1
hx = [1 0 -1];
ix = conv2(I0, hx, 'same');
figure('Name','3');
imshow(ix+0.5);

% q2.2
hy = [1;0;-1];
iy = conv2(I0, hy, 'same');
figure('Name','4');
imshow(iy+0.5);

%Harsh Dhingra (19323904)