% MAIN_PIPELINE
% End-to-end EEG motor imagery classification pipeline
% Steps: Filter → PCA → ICA → CSP → Features → Classification

clear; clc;

Fs = 512;
num_train_subjects = 42;
num_total_subjects = 52;

features_all = [];
labels_all = [];
subject_ids = [];

for subj = 1:num_total_subjects
    filename = sprintf('s%02d.mat', subj);
    load(filename, 'eeg');

    fprintf("Processing Subject %02d...\n", subj);

    % --- Filtering ---
    [filt_left, filt_right, valid_channels] = ...
        bandpass_filter(eeg, Fs);

    % --- PCA ---
    data_pre_ica = apply_pca(filt_left, filt_right, valid_channels);

    % --- ICA ---
    signal_cleaned = apply_ica(data_pre_ica);

    % --- CSP ---
    [X_all, y] = compute_csp(eeg, filt_left, filt_right, ...
                             signal_cleaned, valid_channels);

    % --- Feature Extraction ---
    feats = extract_features(X_all);

    % --- Collect ---
    features_all = [features_all; feats];
    labels_all = [labels_all; y(:)];
    subject_ids = [subject_ids; repmat(subj, length(y), 1)];
end

% --- Classification ---
classify_eeg(features_all, labels_all, subject_ids, ...
             num_train_subjects, num_total_subjects);
