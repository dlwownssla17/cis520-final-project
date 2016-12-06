addpath('./liblinear');

load './train_set/words_train.mat';
model = logistic(X, full(Y));

load './train_set_unlabeled/words_train_unlabeled.mat';
Yhat_james = zeros(4500,1);
Yhat = sparse(predict(Yhat_james, X, model, ['-q', 'col']));

save('./test.mat', 'model');
