function [y,A] = Sketching(X,M)
A = ones(2,2);
while(rank(A)~=M)
    A = (1/sqrt(M))*randn(M,size(X,1));
    %A = randn(M,size(X,1));
end
%y =(1/(sqrt(M)))*A*X;
y = A*X;
end