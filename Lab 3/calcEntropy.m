function entropy = calcEntropy(Y)
% Fn takes as input 2D array Y containing the image intensities
%and returns the entropy

% Normalize the bin counts so that sum(N) is 1
% Each bin count represents the probability that an observation falls within that bin.
p= histcounts(Y,2048,'Normalization', 'probability');

H = p .* log2(p);
H(isnan(H)) = 0;
entropy = -sum(H);


end