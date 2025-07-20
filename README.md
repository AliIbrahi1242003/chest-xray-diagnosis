# 🩺 Chest X-ray Pneumonia Diagnosis  

This project is a deep learning-powered web application that predicts *Pneumonia* from chest X-ray images using a fine-tuned *VGG16 model*.  

The app is built with *Flask* for the backend and *Bootstrap 5* with custom CSS for a clean and responsive interface.  



## 🚀 How it works
- Upload a chest X-ray image  
- The model analyzes the image and predicts whether it's *Normal* or *Pneumonia*  
- The result is displayed with a confidence percentage  


## 🧩 Features  
- 🖼 User-friendly image upload form  
- 🔮 Live prediction with confidence score  
- 🎨 Animated & responsive design  
- 🧠 Trained on Kaggle’s labeled chest X-ray dataset  
- 🗂 Organized project structure  


## 🗂 Project Structure

├── app.py ├── model_vgg.h5 ├── requirements.txt ├── README.md ├── environment.yml ├── templates/ │   ├── index.html │   └── result.html ├── static/ │   ├── style.css │   ├── uploads/ │   └── demo/ │       ├── upload_page.png │       └── result_page.png



## 🛠 Installation  

1️⃣ Clone the repository:
```bash
git clone https://github.com/AliIbrahi1242003/chest-xray-diagnosis.git
cd chest-xray-diagnosis

2️⃣ (Optional) Create a Conda environment:

conda env create -f environment.yml
conda activate chest-xray

3️⃣ Install dependencies:

pip install -r requirements.txt

4️⃣ Run the app:

python app.py



📊 Model Information

Pretrained VGG16 on ImageNet

Fine-tuned on Pneumonia chest X-ray dataset from Kaggle

Data augmentation and early stopping used during training



## 🖼 Demo  

> The following demo images show the Upload Page and Result Page of the Chest X-ray Diagnosis Web App.

| Upload Page | Result Page |
|-------------|--------------|
| ![Upload Page](https://i.postimg.cc/0ywLbyFd/upload-page.png) | ![Result Page](https://i.postimg.cc/MpNrPVzj/result-page.png) |



📄 License

For educational purposes only.


🙌 Made with ❤ by Ali Ibrahim
