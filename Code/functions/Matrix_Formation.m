function video_matrix = Matrix_Formation(v)
video_matrix = zeros(v.Height* v.Width, v.Duration * v.FrameRate); i=1;
while(hasFrame(v))
    image = readFrame(v);
    video_matrix(:,i) = reshape(image(:,:,1),v.Height* v.Width,1);
    i = i+1;
end
video_matrix = double(video_matrix);
