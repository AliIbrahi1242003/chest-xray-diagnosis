from flask import Flask, render_template, request, redirect, url_for
from tensorflow.keras.models import load_model
from tensorflow.keras.preprocessing import image
import numpy as np
import os

app = Flask(__name__)
model = load_model('model_vgg.h5')

def predict_img(img_path):
    img = image.load_img(img_path, target_size=(224, 224))
    img_tensor = image.img_to_array(img) / 255.0
    img_tensor = np.expand_dims(img_tensor, axis=0)
    prediction = model.predict(img_tensor)[0][0]
    label = "Pneumonia" if prediction > 0.5 else "Normal"
    confidence = prediction * 100 if prediction > 0.5 else (1 - prediction) * 100
    return label, round(confidence, 2)

@app.route('/', methods=['GET', 'POST'])
def index():
    if request.method == 'POST':
        file = request.files['file']
        if file:
            upload_folder = 'static/uploads'
            os.makedirs(upload_folder, exist_ok=True)
            file_path = os.path.join(upload_folder, file.filename)
            file.save(file_path)
            label, confidence = predict_img(file_path)
            return redirect(url_for('result', img=file.filename, pred=label, conf=confidence))
    return render_template('index.html')

@app.route('/result')
def result():
    img = request.args.get('img')
    pred = request.args.get('pred')
    conf = request.args.get('conf')
    return render_template('result.html', image_path=f'static/uploads/{img}', prediction=pred, confidence=conf)

if __name__ == '__main__':
    app.run(debug=True)