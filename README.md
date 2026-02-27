# 🧠 Motor Imagery EEG Classification (MATLAB)

Cross-subject EEG motor imagery classification pipeline for Brain–Computer Interface (BCI) applications using CSP spatial filtering and machine learning.

---

## 🎯 Overview

This project implements an end-to-end EEG signal processing pipeline to classify imagined left vs right hand movements.

The system processes raw EEG signals, removes noise and artifacts, extracts discriminative spatial features, and evaluates multiple classifiers across unseen subjects.

**Dataset:** 52-subject Motor Imagery EEG (GigaDB)
**Platform:** MATLAB
**Application:** Brain–Computer Interface (BCI)

---

## 🔄 Pipeline

Raw EEG
➡️ Bandpass Filtering (0.5–30 Hz)
➡️ PCA (Dimensionality Reduction)
➡️ ICA (Artifact Separation)
➡️ CSP (Spatial Filtering)
➡️ Feature Extraction (Log-Variance)
➡️ Classification (LDA / SVM / Boosting)
➡️ Cross-Subject Evaluation

---

## 📂 Repository Structure

```text
Motor-Imagery-EEG-Classification/
├── data/      # Dataset description & placement
├── docs/      # Methodology documentation
├── results/   # Plots & evaluation outputs
├── src/       # MATLAB source code
└── README.md
```

---

### 📁 data/

```text
data/
└── README.md   # Dataset description & download info
```

---

### 📁 docs/

```text
docs/
├── pipeline.md
├── preprocessing.md
├── csp.md
├── classification.md
└── results.md
```

---

### 📁 src/

```text
src/
├── main_pipeline.m
├── bandpass_filter.m
├── apply_pca.m
├── apply_ica.m
├── compute_csp.m
├── extract_features.m
└── classify_eeg.m
```

---

### 📁 results/

```text
results/
├── Left_Raw.png
├── Right_Raw.png
├── Noise.png
├── PCA Components.png
├── PCA Scree plot.png
├── Cumulative Variance.png
├── ICA.png
├── ICA Cleaning.png
├── CSP Space.png
└── README.md
```

---

## ⚙️ Requirements

* MATLAB R2020 or newer
* Statistics and Machine Learning Toolbox
* Signal Processing Toolbox
* FastICA package (MATLAB)

---

## ▶️ Usage

1️⃣ Download EEG dataset (see `data/README.md`)
2️⃣ Place subject files (`s01.mat … s52.mat`) in project root or `data/`
3️⃣ Run pipeline:

```matlab
run('src/main_pipeline.m')
```

---

## 📊 Results Summary

| Classifier     | Accuracy (%) | Precision | Recall | F1-Score |
| -------------- | ------------ | --------- | ------ | -------- |
| **LDA**        | 85.00        | 0.67      | 0.41   | 0.78     |
| **SVM**        | **87.00**    | 0.66      | 0.69   | 0.68     |
| **AdaBoost**   | 82.50        | 0.63      | 0.59   | 0.81     |
| **LogitBoost** | **87.00**    | 0.57      | 0.59   | **0.88** |

### 🏆 Key Findings

* Highest accuracy: **SVM & LogitBoost (87%)**
* Highest F1-score: **LogitBoost (0.88)**
* CSP spatial filtering improved class separability
* Pipeline generalizes across unseen subjects

---

## 📈 Visual Results

The `results/` folder contains stage-wise outputs:

* Raw EEG signals
* PCA variance analysis
* ICA components & cleaning
* CSP spatial patterns

These confirm effectiveness of each processing stage.

---

## 📚 Documentation

Detailed methodology available in:

* `docs/pipeline.md` → full workflow
* `docs/preprocessing.md` → filtering & PCA/ICA
* `docs/csp.md` → spatial filtering theory
* `docs/classification.md` → models & metrics
* `docs/results.md` → evaluation analysis

---

## 🧠 Dataset

52-subject Motor Imagery EEG dataset (GigaDB)

See `data/README.md` for:

* dataset structure
* download link
* citation

---

## 🎓 Author

**Srikumaran S.S.**
B.Tech Electrical and Electronics Engineering
National Institute of Technology, Tiruchirappalli

---

## 📌 Applications

* Brain–Computer Interfaces (BCI)
* Neurorehabilitation
* Assistive communication
* Human–machine interaction

---

## ⭐ Summary

This repository demonstrates a complete MATLAB EEG motor imagery classification pipeline with:

* advanced signal preprocessing
* CSP spatial feature extraction
* multi-model classification
* cross-subject evaluation
* reproducible results

---
