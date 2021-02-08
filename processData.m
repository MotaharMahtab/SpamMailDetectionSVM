%change directory before proceeding
cd 'E:\CODES\Machine_Learning\Andrew\Project3\spamtxt'
path = 'E:\CODES\Machine_Learning\Andrew\Project3\spamtxt';
data = zeros(3000,1900);
files = readdir(path);
m = size(files,1);
for i=4:m
  file_contents = readFile(strcat(path,'\',files{i}));
  word_indices  = processEmail(file_contents);
  features      = emailFeatures(word_indices);
  data(i,1:end-1) = features;
end
data(1:500,end) = 1;
save data.mat data;

%2nd step
%change directory before proceeding
cd 'E:\CODES\Machine_Learning\Andrew\Project3\easyhamtxt'
files = readdir(pwd);
m = size(files,1)

for i=4:m
  file_contents = readFile(files{i});
  word_indices  = processEmail(file_contents);
  features      = emailFeatures(word_indices);
  data(i+500,1:end-1) = features;
end

data(501:end,end) = 0;
save data.mat data;