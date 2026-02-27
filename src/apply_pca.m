function data_pre_ica = apply_pca(filt_left, filt_right, valid_channels)
% APPLY_PCA
% Dimensionality reduction + reconstruction before ICA

data_all = [filt_left, filt_right];
X = data_all(valid_channels, :)';

[coeff, score, ~, ~, ~, mu] = pca(X);

N = 20; % number of components
X_reduced = score(:, 1:N);

X_reconstructed = X_reduced * coeff(:, 1:N)' + mu;

data_pre_ica = X_reconstructed';

end
