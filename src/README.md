# 💻 Source Code Structure

This folder contains the MATLAB implementation of the EEG Motor Imagery Classification pipeline.

## 📂 Contents

```text id="srcstruct1"
src/
├── main_pipeline.m     # Full experiment pipeline
├── bandpass_filter.m   # EEG bandpass filtering
├── apply_pca.m         # PCA dimensionality reduction
├── apply_ica.m         # ICA source separation
├── compute_csp.m       # CSP trial preparation
├── extract_features.m  # CSP feature extraction
└── classify_eeg.m      # Model training & evaluation
```

## 🧭 Navigation Guide

* 🧠 **main_pipeline.m** → runs complete workflow
* 🎚️ **bandpass_filter.m** → signal filtering
* 📉 **apply_pca.m** → dimensionality reduction
* 🔬 **apply_ica.m** → source separation
* 🧭 **compute_csp.m** → CSP preparation
* 📊 **extract_features.m** → feature computation
* 🤖 **classify_eeg.m** → classification & metrics

---

These scripts implement the processing pipeline described in `docs/`.
