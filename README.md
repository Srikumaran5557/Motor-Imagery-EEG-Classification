# Motor-Imagery-EEG-Classification

## Overview

This project implements a complete EEG signal processing and classification pipeline for motor imagery–based Brain–Computer Interface (BCI) applications using MATLAB.
The system preprocesses EEG signals, removes artifacts, extracts spatial features using Common Spatial Pattern (CSP), and classifies motor imagery tasks using machine learning models.

Developed during a research internship at **National Institute of Technology, Tiruchirappalli (NIT Trichy)** under Dr. Vishnu Priya.

---

## Problem Statement

Motor imagery EEG signals are low-amplitude, noisy, and highly variable across trials.
The objective is to design a robust MATLAB pipeline that can reliably distinguish motor imagery tasks from EEG recordings.

---

## Methodology

### Signal Preprocessing

* 0.5–30 Hz bandpass filtering using MATLAB digital filters
* Artifact reduction using Principal Component Analysis (PCA)
* Independent Component Analysis (ICA) for separating physiological artifacts

### Feature Extraction

* Common Spatial Pattern (CSP) for discriminative spatial filtering
* Log-variance feature computation from spatially filtered signals

### Classification

* Support Vector Machine (SVM)
* Random Forest

---

## Pipeline

EEG → Bandpass Filter → PCA/ICA → CSP → Feature Vector → Classifier → Prediction

---

## Repository Structure

```id="matstr1"
data/            EEG datasets (not included)
src/             MATLAB scripts (preprocessing, CSP, classification)
results/         Plots and evaluation outputs
README.md
```

---

## Requirements

* MATLAB R2020+
* Statistics and Machine Learning Toolbox

---

## Usage

Run the pipeline in MATLAB:

```matlab id="matrun1"
run('src/main_pipeline.m')
```

---

## Results

CSP-based spatial filtering improved separability between motor imagery classes and enabled effective classification using SVM and Random Forest models.

---

## Applications

* Brain–Computer Interfaces (BCI)
* Neurorehabilitation
* Assistive communication systems
* Human–machine interaction

---

## Author

**Srikumaran S.S.**
B.Tech Electrical and Electronics Engineering
National Institute of Technology, Tiruchirappalli

---

## Note

Dataset is not included due to research/data-sharing restrictions.

