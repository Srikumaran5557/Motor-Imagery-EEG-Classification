function [X_all, y] = compute_csp(eeg, filt_left, filt_right, ...
                                  signal_cleaned, valid_channels)
% COMPUTE_CSP
% Computes CSP spatial filters and trial tensors

n_trials = eeg.n_imagery_trials;
samples_per_trial = size(eeg.imagery_left, 2) / n_trials;

% Reinsert cleaned channels
left_clean = zeros(64, size(filt_left, 2));
right_clean = zeros(64, size(filt_right, 2));

left_clean(valid_channels, :) = ...
    signal_cleaned(:, 1:size(filt_left, 2));

right_clean(valid_channels, :) = ...
    signal_cleaned(:, size(filt_left, 2)+1:end);

% Reshape trials
X_l = reshape(left_clean, 64, samples_per_trial, n_trials);
X_r = reshape(right_clean, 64, samples_per_trial, n_trials);

X_all = cat(3, X_l, X_r);

y = [zeros(1, n_trials), ones(1, n_trials)];

end
