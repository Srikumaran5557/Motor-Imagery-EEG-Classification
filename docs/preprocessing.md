# 🧹 EEG Preprocessing

## 🎚️ Bandpass Filtering

EEG signals are filtered between **0.5–30 Hz** using a 4th-order Butterworth filter.

### ✔️ Purpose

* Remove DC drift (<0.5 Hz)
* Remove muscle/high-frequency noise (>30 Hz)
* Preserve motor imagery rhythms

---

## 📡 Channel Selection

Channels with near-zero variance are removed.

### ✔️ Criterion

* Variance > 1e-6

### ✔️ Reason

* Avoid flat/noisy electrodes
* Improve PCA stability
* Prevent numerical issues

---

## 📉 PCA Reduction

Principal Component Analysis is applied across channels and time.

### ⚙️ Parameters

* Components retained: **20**

### ✔️ Benefits

* Noise suppression
* Dimensionality reduction
* ICA stabilization
* Faster computation
