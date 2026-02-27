# 🧠 Dataset Description — Motor Imagery EEG (BCI)

## 📊 Dataset Overview

This project uses a publicly available **Motor Imagery EEG dataset** containing brain signal recordings from **52 healthy subjects** performing imagined left- and right-hand movements for **Brain–Computer Interface (BCI)** research.

Each participant completed controlled experimental sessions including:

* ✋ **Motor imagery** (left vs right hand)
* 🖐️ **Real hand movement trials**
* 🧘 **Resting-state EEG**
* ⚡ **Noise/artifact recordings** (eye, jaw, head activity)

The dataset also provides **metadata** such as electrode locations and subject information to support advanced BCI analysis and subject-transfer studies.

EEG signals were recorded using **64 EEG channels** (+4 EMG) at a **512 Hz sampling rate** with the international **10–10 electrode system**. 

---

## 🧪 Experimental Paradigm

Each motor imagery trial followed a structured sequence:

**Fixation (2 s)** → **Cue: Left/Right Hand (3 s)** → **Motor Imagery** → **Rest (4–5 s)**

Subjects were instructed to **imagine sequential finger movements** of the cued hand without actual movement.

---

## 👥 Subjects

* **Total subjects:** 52
* **Gender:** 19 female, 33 male
* **Mean age:** 24.8 ± 3.86 years
* **Handedness:** 50 right-handed, 2 both-handed

All subjects provided informed consent and participated in identical experimental protocols. 

---

## 📁 Data Contents

For each subject (`s01 … s52`), MATLAB `.mat` files contain structured EEG and EMG recordings:

### 🧠 Motor Imagery Data

* `imagery_left` → 100–120 trials of **left-hand motor imagery**
* `imagery_right` → 100–120 trials of **right-hand motor imagery**
* `imagery_event` → trial onset markers
* `n_imagery_trials` → trial count per class

### ✋ Real Movement Data

* `movement_left` → 20 trials real left-hand movement
* `movement_right` → 20 trials real right-hand movement
* `movement_event` → onset markers
* `n_movement_trials` → trials per class

### 🧘 Rest & Noise Data

* `rest` → eyes-open resting EEG
* `noise_eye_blink`
* `noise_eye_ud` (up/down)
* `noise_eye_lr` (left/right)
* `noise_jaw`
* `noise_head`

Each noise type recorded **twice for 5 s** (rest: 60 s).

### 📐 Signal & Sensor Metadata

* `srate` → sampling rate (512 Hz)
* `frame` → trial time window (ms)
* `senloc` → 3D electrode coordinates
* `psenloc` → projected electrode positions
* `subject` → subject ID
* `bad_trial_indices` → artifact trials

The MATLAB structure includes **64 EEG channels (1–64)** and **4 EMG channels (65–68)**. 

---

## 📈 Signal Characteristics

* 🧠 EEG channels: **64**
* 💪 EMG channels: **4**
* ⏱️ Sampling rate: **512 Hz**
* ✋ Classes: **Left vs Right motor imagery**
* 🔁 Trials/class: **100–120**
* 📊 Additional: real movement + noise + rest

---

## 🎯 Usage in This Project

This repository uses the **motor imagery EEG trials** for BCI classification:

* Bandpass filtering (0.5–30 Hz)
* Artifact removal (PCA / ICA)
* Spatial filtering (CSP)
* Classification (SVM / Random Forest)

---

## 🔗 Access

The original dataset is available from the GigaScience database (GigaDB):

👉 https://doi.org/10.5524/100295

---

