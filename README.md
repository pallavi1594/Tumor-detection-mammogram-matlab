# Tumor-detection-mammogram-matlab
# Breast Tumor Detection using MATLAB 🧠📊

This project presents a MATLAB-based system for **automated detection of breast cancer** from mammogram images using advanced image processing techniques. It is inspired by the research titled:

📄 [**"Breast Tumor Detection using MATLAB"** – Mohamed Ayman, Zagazig University, 2024](https://www.researchgate.net/publication/380321044)

---

## 🚀 Project Overview

Breast cancer remains one of the leading causes of death among women worldwide. Early and accurate detection through mammography can significantly improve survival rates. This MATLAB-based Computer-Aided Detection (CAD) system automates the identification of potential tumors in mammographic images.

Key stages of the system:

- **Preprocessing:** Enhance image contrast and remove noise.
- **Segmentation:** Isolate suspicious regions (potential tumors).
- **Edge Detection:** Highlight abnormal boundaries.
- **Classification:** Differentiate between tumor regions and other tissues.

---

## 🛠️ Features

✅ Grayscale conversion for consistent processing  
✅ Adaptive or global thresholding based on MATLAB version  
✅ Binary image cleanup using morphological operations  
✅ Sobel edge detection  
✅ Region detection using bounding boxes  
✅ Works on standard mammogram image datasets

---

## 🧪 Methodology

1. **Read and Preprocess the Mammogram**
   - Convert to grayscale if RGB
   - Apply contrast enhancement

2. **Thresholding**
   - Adaptive (for newer MATLAB versions) or Otsu global method

3. **Cleaning Binary Image**
   - Remove small noise artifacts
   - Focus only on relevant regions

4. **Edge Detection**
   - Use Sobel operator to highlight suspicious areas

5. **Region Analysis**
   - Identify tumor-like regions
   - Draw bounding boxes on detected areas

---

## 📸 Sample Results

### ❌ False Positive: Pectoralis Muscle Misidentified (Fig. 1)
![Fig 1](https://github.com/pallavi1594/Tumor-detection-mammogram-matlab/blob/main/b1.png?raw=true)

To address this, the image is divided, or the muscle is segmented out.

---

### ✅ Tumor-Free Breast Correctly Identified (Fig. 2)
![Fig 2](https://github.com/pallavi1594/Tumor-detection-mammogram-matlab/blob/main/b2.png?raw=true)

System confirms no tumor in a healthy breast.

---

### ✅ Accurate Tumor Detection (Fig. 3)
![Fig 3](https://github.com/pallavi1594/Tumor-detection-mammogram-matlab/blob/main/b3.png?raw=true)

Detected tumor is clearly highlighted.

---

### ⚠️ Misclassification in Dense Breast Tissue (Fig. 4)
![Fig 4](https://github.com/pallavi1594/Tumor-detection-mammogram-matlab/blob/main/b4.png?raw=true)

White dense tissue is sometimes misclassified as a tumor. This is a known limitation.

---

## 📂 Project Structure

