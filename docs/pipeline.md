# 🧠 EEG Motor Imagery Classification Pipeline

## 🎯 Overview

This project implements a cross-subject EEG motor imagery classification pipeline for Brain–Computer Interface (BCI) applications using MATLAB.

It processes raw EEG signals and predicts imagined hand movement (left vs right).

---

## 🔄 Processing Flow

Raw EEG
➡️ Bandpass Filter
➡️ PCA
➡️ ICA
➡️ CSP
➡️ Feature Extraction
➡️ Classification
➡️ Evaluation

---

## ⚙️ Pipeline Steps

### 🎚️ Bandpass Filtering (0.5–30 Hz)

* Removes slow drift and high-frequency noise
* Preserves sensorimotor rhythms (mu, beta)
* Improves signal quality

---

### 📉 PCA (Dimensionality Reduction)

* Removes redundant/noisy channel components
* Keeps dominant EEG variance directions
* Stabilizes ICA decomposition

---

### 🔬 ICA (Source Separation)

* Separates independent neural sources
* Reduces artifacts and mixing effects
* Reconstructs cleaned EEG signals

---

### 🧭 CSP (Spatial Filtering)

* Learns spatial filters maximizing class separation
* Enhances left vs right motor imagery patterns
* Captures contralateral sensorimotor activity

---

### 📊 Feature Extraction

* Projects EEG through CSP filters
* Computes normalized log-variance features
* Produces feature vector per trial

---

### 🤖 Classification

* Trains machine learning models
* Predicts motor imagery class
* Evaluates cross-subject generalization

---

## 👥 Cross-Subject Setup

* Total subjects: **52**
* Training subjects: **42**
* Testing subjects: **10**
* Evaluation on unseen subjects

This setup tests real BCI transfer capability.
