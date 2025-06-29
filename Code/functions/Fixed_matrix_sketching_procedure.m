function [status,T,K] = Fixed_matrix_sketching_procedure(X,A,win_size,b)
set = zeros(1,win_size);status = zeros(1,size(X,2)-win_size+1); T=0;K=0;
invariate = inv((A * A'));
for i=1:size(X,2)-win_size+1
    t = win_size+i-1;
    for k=1:win_size
        samp_mean = sample_mean(X(:,i:win_size+i-1),k,win_size);
        set(k) = ((win_size - k)/2) * samp_mean' * invariate * samp_mean;
    end
    [maximum,I] = max(set);
    status(i) = maximum;
    if(maximum > b)
        K = i+I-1;
        T = t;
        break
    end
end