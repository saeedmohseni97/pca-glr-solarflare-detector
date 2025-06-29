function [Y,covariance_matrix,D,V] = Solar_S_Statistics(video_matrix)
N = size(video_matrix,2); M = size(video_matrix,1); i= M ;
video_matrix_mean_devian = video_matrix - mean(video_matrix,2);
covariance_matrix = (1/(N-1)) * (video_matrix_mean_devian * ...
    video_matrix_mean_devian');
[V,D] = eig(covariance_matrix);
ind = D<0;
D(ind) = 0;
ind = D~=0;
D(ind) = D(ind).^(-.5);
Y = D * V' * video_matrix_mean_devian;
Y = Y(floor(M - .08 * M)+1:5000,:);


