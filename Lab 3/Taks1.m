I = double(imread("lena512.png"));

% Normalize the bin counts so that sum(N) is 1
% Each bin count represents the probability that an observation falls within that bin.
p= histcounts(I,2048,'Normalization', 'probability');

J = p .* log2(p);
J(isnan(J)) = 0;
entropy = -sum(J)
