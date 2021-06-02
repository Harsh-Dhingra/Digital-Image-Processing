function H = calcHaarLevel1(Y)
% Input = 2D array Y containing img intensities
% Returns 1level Haar Transform
% test for odd input
% column check
if mod(size(Y,1), 2) ~= 0
  error('height must be multiple of 2');
end
% row check
if mod(size(Y,2), 2) ~= 0
  error('width must be multiple of 2');
end

a = Y(1:2:end, 1:2:end);
b = Y(1:2:end, 2:2:end);
c = Y(2:2:end, 1:2:end);
d = Y(2:2:end, 2:2:end); 

lolo = a + b + c + d;
hilo = a - b + c - d;
lohi = a - c + b - d;
hihi = a - b - (c - d);
 
H = 0.5*[lolo hilo ;lohi hihi];

end
