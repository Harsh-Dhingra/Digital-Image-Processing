%% SHREY WAHI Lab 3 (Q1)

function entropy = calcEntropy(Y)
p = imhist(Y, 2048);
p(p==0) = [];
p = p/numel(Y);
E = -sum(p.*log2(p));
entropy = E;
end