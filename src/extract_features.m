function features = extract_features(X_all)
% EXTRACT_FEATURES
% Computes CSP log-variance features

% --- CSP matrices ---
cov0 = avg_covariance(X_all(:, :, 1:end/2));
cov1 = avg_covariance(X_all(:, :, end/2+1:end));

cov_total = cov0 + cov1;

[Wcsp, D] = eig(cov0, cov_total);
[~, idx] = sort(diag(D), 'descend');
Wcsp = Wcsp(:, idx);

num_filters = 2;
W_csp = [Wcsp(:, 1:num_filters), ...
         Wcsp(:, end-num_filters+1:end)];

% --- Feature extraction ---
[~, ~, trials] = size(X_all);
features = zeros(trials, size(W_csp, 2));

for t = 1:trials
    trial = squeeze(X_all(:, :, t));
    trial = trial - mean(trial, 2);

    csp_proj = W_csp' * trial;
    var_feat = var(csp_proj, 0, 2);

    features(t, :) = log(var_feat / sum(var_feat));
end

end

% ===== Helper =====
function cov_mat = avg_covariance(data)
[ch, ~, trials] = size(data);
cov_mat = zeros(ch, ch);

for t = 1:trials
    trial = squeeze(data(:, :, t));
    trial = trial - mean(trial, 2);

    cov_t = trial * trial' / trace(trial * trial');
    cov_mat = cov_mat + cov_t;
end

cov_mat = cov_mat / trials;
end
