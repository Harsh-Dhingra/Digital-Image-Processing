% q3.1

grad_mag = (Ix).^2 + (Iy).^2;
figure('Name','5');
imshow(grad_mag);

% q3.2

theta = atan(Ix ./ Iy) * 180 / pi;
figure('Name','6');
imshow(theta);

%Harsh Dhingra(19323904)