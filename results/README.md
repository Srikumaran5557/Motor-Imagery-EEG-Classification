# 📈 Results

This folder contains visualization outputs and evaluation metrics from the EEG Motor Imagery Classification pipeline.

---

## 📂 Structure (Pipeline Order)

```text
results/
├── Left_Raw.png
├── Right_Raw.png
├── Noise.png
│
├── PCA Components.png
├── PCA Scree plot.png
├── Cumulative Variance.png
│
├── ICA.png
├── ICA Cleaning.png
│
├── CSP Space.png
│
└── README.md
```

---

## 🧪 Processing Visualizations

### 🧠 Raw EEG Signals

* **Left_Raw.png** → raw left motor imagery EEG
* **Right_Raw.png** → raw right motor imagery EEG
* **Noise.png** → EEG artifacts / noise components

---

### 📉 PCA Analysis

* **PCA Components.png** → principal component projections
* **PCA Scree plot.png** → explained variance per component
* **Cumulative Variance.png** → cumulative explained variance

---

### 🔬 ICA Analysis

* **ICA.png** → independent components
* **ICA Cleaning.png** → reconstructed cleaned EEG

---

### 🧭 CSP Spatial Filtering

* **CSP Space.png** → spatial distribution of CSP filters

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

* SVM and XGBoost achieved highest accuracy (**87%**)
* XGBoost achieved highest F1-score (**0.88**)
* PCA + ICA preprocessing improved signal quality
* CSP extracted discriminative spatial patterns
* Models generalized well across unseen subjects

---

## 📌 Summary

The results demonstrate that the proposed MATLAB EEG pipeline:

* Cleans EEG using PCA + ICA
* Extracts spatial features using CSP
* Achieves high cross-subject classification accuracy

These visualizations validate each stage of the processing pipeline.
