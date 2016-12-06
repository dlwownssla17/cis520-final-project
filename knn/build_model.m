load './train_set/words_train.mat';
model = fitcknn(X, Y);

load './train_set_unlabeled/words_train_unlabeled.mat';
Yhat = predict(model, X);
save('./test.mat', 'model');