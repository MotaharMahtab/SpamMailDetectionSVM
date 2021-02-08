cd 'E:\CODES\Machine_Learning\Andrew\Project3'
load 'model.mat';
load 'test.mat';
p = svmPredict(model, x);
fprintf('Training Accuracy: %f\n', mean(double(p == y)) * 100);