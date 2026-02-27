# 🧭 Common Spatial Pattern (CSP)

## 🎯 Purpose

CSP extracts spatial filters that maximize variance for one motor imagery class while minimizing it for the other.

Used for:
➡️ Left vs Right hand EEG discrimination

---

## 🧮 Method Steps

### 1️⃣ Covariance Estimation

* Compute normalized covariance matrices

  * Left imagery
  * Right imagery

---

### 2️⃣ Generalized Eigenvalue Problem

Solve:

cov_left · w = λ · cov_total · w

Eigenvectors represent spatial filters.

---

### 3️⃣ Filter Selection

* Select filters with largest eigenvalues
* Select filters with smallest eigenvalues

Total filters used: **4**
(2 per class)

---

## 📊 Feature Extraction

For each trial:

1. Project EEG:
   Z = WᵀX

2. Compute variance per filter

3. Normalize and log transform:

feature = log(var / sum(var))

---

## 🧠 Interpretation

* Filters emphasize contralateral sensorimotor cortex
* Capture class-specific spatial energy patterns
* Enable discriminative motor imagery features
