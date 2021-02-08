cd 'E:\CODES\Machine_Learning\Andrew\Project3\spam2txt'
path = 'E:\CODES\Machine_Learning\Andrew\Project3\spam2txt';
x = zeros(1400,1899);
files = readdir(path);
m = size(files,1);
for i=3:m-1
  file_contents = readFile(strcat(path,'\',files{i}));
  word_indices  = processEmail(file_contents);
  features      = emailFeatures(word_indices);
  x(i,:) = features;
end
y = ones(m,1);
save test.mat x,y;
