%% initialization:
tic;
clear;clc;
addpath('functions')
currentScriptPath = mfilename('fullpath');
[currentDir, ~, ~] = fileparts(currentScriptPath);
datasetPath1 = fullfile(currentDir, '..', 'Dataset', 'zoom_in_video.mp4');
datasetPath2 = fullfile(currentDir, '..', 'Dataset', 'original.mp4');
training_sample_num = 100;   win_size = 50;
M = 100; ET = 5000; iteration = 50; temp = 0;
%% Reading Data :
v = VideoReader(datasetPath1);
video_matrix = Matrix_Formation(v);
%% covariance_calculation:
[Y,covariance_matrix,D,V] = Solar_S_Statistics(video_matrix);
%% Training_Phase :
Y = Training_phase(Y,training_sample_num);
%% change detection procedure :
b = threshold_calculator(ET,M,win_size); 
for i = 1:iteration
    [Y_s,A] = Sketching(Y,M);
    [~,T,K] = Fixed_matrix_sketching_procedure(Y_s,A,win_size,b);
    temp = temp + K;
end
Change_Frame = round(temp/iteration);
toc;
%% displaying Results :
v = VideoReader(datasetPath2);
v.CurrentTime = 30 * (1/v.FrameRate);
figure(1);
imshow(readFrame(v));
title('Before Data Change point (Before Solar Flare)');
v.CurrentTime = Change_Frame * (1/v.FrameRate);
figure(2);
imshow(readFrame(v));
title('Data Change point (Frame '+string(Change_Frame)+')');
