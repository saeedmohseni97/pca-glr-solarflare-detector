# 🔥 PCA-Enhanced Sketching for Change-Point Detection in Solar Flare Videos

This project is a simulation study inspired by the paper  
**"[Sketching for Sequential Change-Point Detection](https://doi.org/10.1186/s13634-019-0635-3)"** (Cao et al., EURASIP JASP, 2019).  
I extended their work by integrating **Principal Component Analysis (PCA)** for preprocessing solar flare video frames to enhance Gaussianity and detect change-points more reliably in high-dimensional data streams.

---

## 📌 Motivation

Change-point detection in high-dimensional video data is challenging due to computational and statistical constraints.  
The original paper proposes using **random linear sketching** to reduce data dimensionality for fast and accurate change-point detection.

**My contribution:**  
💡 I apply PCA to the video frames before sketching to  
- aggregate pixel-level features,  
- enhance Gaussian assumptions,  
- and improve detection performance on real-world solar observation data.

---

## 🌞 Application: Solar Flare Detection

The dataset is a **NASA solar observatory camera video**, showing the sun's surface over time.  
The goal is to detect **sudden flare events** by analyzing the video as a high-dimensional time series.

> 📉 PCA significantly improves the Gaussian assumption used in the genralized likelihood ratio (GLR) test formulation.
---

## 🛠 Features

- ✅ Implements GLR-based change-point detection on sketched data  
- ✅ Uses PCA to enhance signal Gaussianity and reduce dimensionality  
- ✅ Works on real NASA solar camera video  
- ✅ Clean, modular MATLAB code

---

## 🗂 Project Structure

```
📁 code/
  ├── main.m                  # Entry point for simulation
  └─ functions/              # All helper and core functions
📁 dataset/
  ├── original.mp4   # Raw NASA solar flare videos
  └─ zoom_in_video.mp4
📄 README.md
```

---

## 🚀 Getting Started

1. Clone the repo
   ```bash
   git clone https://github.com/saeedmohseni97/solarflare-pca-change-detection.git
   cd solarflare-pca-change-detection
   ```

2. Run the main script
   ```matlab
   % Inside MATLAB
   cd code
   run('main.m')
   ```

3. View the change-point detection results on the solar flare video.

---

## 📈 Results

- PCA preprocessing yielded lower variance in detection delay

---

## 🧠 Key Techniques

- **Sketching**: Reduces high-dimensional vectors using linear projections
- **PCA**: Projects video frames into dominant eigenspace to improve signal quality
- **GLR Test**: Uses generalized likelihood ratio for change detection with unknown post-change mean

---

## 📚 Reference

Cao, Y., Thompson, A., Wang, M., & Xie, Y. (2019).  
[*Sketching for sequential change-point detection.*](https://doi.org/10.1186/s13634-019-0635-3)  
_EURASIP Journal on Advances in Signal Processing_, 2019(42).

---

## 👨‍💻 Author

**Saeed Mohseni seh deh**  
Graduate Researcher  
Institute for Advanced Computing, Virginia Tech, VA, USA  
🌐 [My Website](https://saeedmohseni.netlify.app/) | 📫 saeedmohseni@vt.edu

---

## 🌟 If you like this project...

- ⭐ Star the repository
- 🍴 Fork it
- 🧠 Discuss ideas or improvements
