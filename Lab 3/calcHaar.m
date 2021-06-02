% Task 4

function H = calcHaar(Y, n)
% Input = 2D array Y containign image intensities
% Returns 1 level Haar transform Haar transform
% n = num levels used

H = calcHaarLevel1(Y);

if n == 1
  return
end
% Recursively call it to the lolo band

for i = 1 : n-1
  % split lolo from previous level Haar
  split_area = H(1 : (2 ^ -i) * end, 1 : (2 ^ -i) * end);
  % t nth level
  nth_level = calcHaarLevel1(split_area);
  % replace original results
  H(1 : (2 ^ -i) * end, 1 : (2 ^ -i) * end) = nth_level;
end


end