load './train_set/words_train.mat';
train_labeled_x = X;
train_labeled_y = Y;

model = fitcnb(X, Y, 'Distribution', 'mn');

load './train_set_unlabeled/words_train_unlabeled.mat';
train_unlabeled_x = X;
Yhat = predict(model, train_unlabeled_x);
save('./test.mat', model);

