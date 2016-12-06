function [ model ] = logistic( train_x, train_y )
    model = train(train_y, sparse(train_x), ['-s 0', 'col']);
end

