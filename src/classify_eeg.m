function classify_eeg(features_all, labels_all, subject_ids, ...
                      num_train_subjects, num_total_subjects)
% CLASSIFY_EEG
% Train/test split by subject and evaluate classifiers

train_subjects = 1:num_train_subjects;
test_subjects = (num_train_subjects+1):num_total_subjects;

train_idx = ismember(subject_ids, train_subjects);
test_idx = ismember(subject_ids, test_subjects);

X_train = features_all(train_idx, :);
y_train = labels_all(train_idx);

X_test = features_all(test_idx, :);
y_test = labels_all(test_idx);

models = {};

% LDA
models{end+1}.name = 'LDA';
models{end}.mdl = fitcdiscr(X_train, y_train, ...
    'DiscrimType', 'linear', 'Prior', 'uniform');

% SVM
models{end+1}.name = 'SVM';
models{end}.mdl = fitcsvm(X_train, y_train, ...
    'KernelFunction', 'rbf', 'Standardize', true);

% AdaBoost
models{end+1}.name = 'AdaBoost';
models{end}.mdl = fitcensemble(X_train, y_train, ...
    'Method', 'AdaBoostM1', 'NumLearningCycles', 100);

% LogitBoost (XGBoost-like)
models{end+1}.name = 'LogitBoost';
models{end}.mdl = fitcensemble(X_train, y_train, ...
    'Method', 'LogitBoost', 'NumLearningCycles', 100);

% --- Evaluation ---
for k = 1:numel(models)
    y_pred = predict(models{k}.mdl, X_test);

    conf_mat = confusionmat(y_test, y_pred);

    TP = conf_mat(2,2);
    FP = conf_mat(1,2);
    FN = conf_mat(2,1);
    TN = conf_mat(1,1);

    accuracy = (TP+TN)/sum(conf_mat(:));
    precision = TP/(TP+FP+eps);
    recall = TP/(TP+FN+eps);
    f1 = 2*(precision*recall)/(precision+recall+eps);

    total = sum(conf_mat(:));
    po = (TP+TN)/total;
    pe = (sum(conf_mat(:,1))*sum(conf_mat(1,:)) + ...
          sum(conf_mat(:,2))*sum(conf_mat(2,:)))/total^2;
    kappa = (po-pe)/(1-pe+eps);

    fprintf("\n===== %s =====\n", models{k}.name);
    fprintf("Accuracy: %.2f%%\n", accuracy*100);
    fprintf("Precision: %.2f\n", precision);
    fprintf("Recall: %.2f\n", recall);
    fprintf("F1: %.2f\n", f1);
    fprintf("Kappa: %.2f\n", kappa);
end

end
