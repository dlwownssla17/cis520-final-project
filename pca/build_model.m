addpath('./liblinear');
load './train_set/words_train.mat';
labelledX = X;
labelledY = Y;
load './train_set_unlabeled/words_train_unlabeled.mat';
unlabelledX = X;

coeff = sparse(pca(full(vertcat(labelledX, unlabelledX)), 'NumComponents', 100));
pcaLabelledX = labelledX * coeff;


model = logistic(pcaLabelledX, full(Y));

Yhat_james = zeros(4500,1);
Yhat = sparse(predict(Yhat_james, X, model, ['-q', 'col']));
save('./coeff.mat', 'coeff');
save('./test.mat', 'model');