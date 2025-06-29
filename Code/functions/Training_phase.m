function video_matrix_out = Training_phase(video_matrix,N)
video_matrix_out = video_matrix - mean(video_matrix(:,1:N),2);
