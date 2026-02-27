function signal_cleaned = apply_ica(data_pre_ica)
% APPLY_ICA
% Performs ICA decomposition (artifact removal optional)

[icasig, A, ~] = fastica(data_pre_ica, ...
    'maxNumIterations', 500);

% Reconstruct signals
signal_cleaned = A * icasig;

end
