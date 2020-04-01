 X = [1,3;2,4;5,6;7,9;];
k = [2,3;5,6;7,2;];
K = size(k,1);
idx = zeros(size(X,1), 1);
for i = 1:size(X,1)
  dist = zeros(K,1);
  for j = 1:K
    dist(j) = sum((X(i, :) - k(j, :)).^2);
  endfor
  [x,ci] = min(dist);
  idx(i) = ci;
endfor
idx
