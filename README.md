# cis520-final-project
4 models trained, they are contained under their respective folder names
1. naive bayes (generative)
2. logistic (discriminative)
3. knn (instance based)
4. pca + logistic (semi-supervised dimensionality reduction)

Instructions:
For each model folder,
build_model.m will generate the model and place it into test.mat
pca is a special case and will also generate a coeff.mat in the build_model script.
Then run predict_labels.m on test data to perform the prediction.

