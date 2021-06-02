%q4.1

mask = ((grad_mag > 0.01) & (theta < 45) & (theta > -45));
figure('Name','7');
imshow(mask);

%q4.2

figure('Name','8');
hist(theta(mask), -45:1:45);

%q4.3

[x, y] = hist(theta(mask), -45:1:45);
angle = sum(x .* y) / sum(x);

%Harsh Dhingra(19323904)