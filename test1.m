load 'model.mat';
% Sort the weights and obtin the vocabulary list
[weight, idx] = sort(model.w, 'descend');
vocabList = getVocabList();

fprintf('\nTop predictors of spam: \n');

%vocabList idx does not give all the values at once. It
%gives ones value at a time. thus we use a for loop
%to traverse all the values.e.g str = vocabList{idx} wont work
%str = vocab(idx) will return a cell. As we want to print ones
%example in each line we have to use a for loop  
%}

for i = 1:15
    fprintf(' %-15s (%f) \n', vocabList{idx(i)}, weight(i));
end
