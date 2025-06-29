function y = sample_mean(X,k,t)
y = sum(X(:,k+1:t),2)/(t-k);
end