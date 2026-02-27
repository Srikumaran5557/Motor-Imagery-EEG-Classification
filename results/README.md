
# 📈 Results

This folder contains visualization outputs and evaluation metrics from the EEG Motor Imagery Classification pipeline.

---

## 📂 Structure

```text
results/
├── CSP Space.png
├── Cumulative Variance.png
├── Eigen Value.png
├── ICA.png
├── ICA Cleaning.png
├── PCA Components.png
├── PCA Scree plot.png
├── Left_Raw.png
├── Right_Raw.png
├── Noise.png
└── README.md
```

---

## 🧪 Processing Visualizations

### 🧠 Raw EEG Signals

* **Left_Raw.png** → raw left motor imagery EEG
* **Right_Raw.png** → raw right motor imagery EEG
* **Noise.png** → EEG artifacts / noise components

---

### 🎚️ PCA Analysis

* **PCA Components.png** → principal component projections
* **PCA Scree plot.png** → explained variance per component
* **Cumulative Variance.png** → cumulative explained variance

These plots justify the PCA dimensionality reduction step.

---

### 🔬 ICA Analysis

* **ICA.png** → independent components
* **ICA Cleaning.png** → reconstructed cleaned EEG

Shows separation and removal of artifacts.

---

### 🧭 CSP Spatial Filtering

* **CSP Space.png** → spatial distribution of CSP filters

Highlights discriminative motor cortex regions.

---

## 🏁 Final Classification Results

| Classifier               | Accuracy (%) | Precision | Recall | F1-Score |
| ------------------------ | ------------ | --------- | ------ | -------- |
| **LDA**                  | 85.00        | 0.67      | 0.41   | 0.78     |
| **SVM**                  | **87.00**    | 0.66      | 0.69   | 0.68     |
| **AdaBoost**             | 82.50        | 0.63      | 0.59   | 0.81     |
| **XGBoost (LogitBoost)** | **87.00**    | 0.57      | 0.59   | **0.88** |

---

## 📊 Interpretation

* **SVM and XGBoost achieved highest accuracy (87%)**
* **XGBoost achieved highest F1-score (0.88)**
* CSP + PCA + ICA preprocessing enabled strong class separability
* Results demonstrate effective cross-subject motor imagery decoding

---

## 📌 Summary

The visualizations confirm:

* PCA captures dominant EEG variance
* ICA separates artifacts
* CSP extracts discriminative spatial patterns
* ML classifiers achieve high accuracy on unseen subjects

These results validate the effectiveness of the proposed EEG motor imagery classification pipeline.
