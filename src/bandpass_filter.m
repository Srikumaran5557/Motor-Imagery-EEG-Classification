function [filt_left, filt_right, valid_channels] = bandpass_filter(eeg, Fs)
% BANDPASS_FILTER
% Applies 0.5–30 Hz bandpass filter to EEG imagery data

low_cutoff = 0.5;
high_cutoff = 30;
order = 4;

[b, a] = butter(order, [low_cutoff high_cutoff]/(Fs/2), 'bandpass');

raw_left = double(eeg.imagery_left(1:64, :));
raw_right = double(eeg.imagery_right(1:64, :));

filt_left = filtfilt(b, a, raw_left')';
filt_right = filtfilt(b, a, raw_right')';

% Identify valid channels (non-flat)
data_all = [filt_left, filt_right];
valid_channels = var(data_all, 0, 2) > 1e-6;

end
