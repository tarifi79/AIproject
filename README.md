### group 6 classifier

### Tools used

This was built with PyTorch/FastAI for the Machine Learning part and Flask as a Webserver. For containerization and easy deployment we will use Docker. The dataset in use is the [Food-101 Dataset] but we chose to only use 6-10 of the foods contained there.

### Train your own Model

open 'Train a Food Model.ipynb' in colab.

You can decide which two foods you want to classify by changing:

```python
#Deciding which two foods we want to classify
labelA = 'edamame'
labelB = 'club_sandwich'
labelC = 'french_fries'
labelD = 'ravioli'
labelE = 'pho'
labelF = 'seaweed_salad'
labelG = 'cheesecake'
labelH = 'chicken_wings'
```

At the end of the notebook it will download an export.pkl file, which is your model.

### Deploy your own Model

Deploying your on model is a easy as replacing the model (server/export.pkl) with your own model. Modify the HTML/CSS.

Command to launch the container:

```bash
docker build -t group6_classifier . && docker run --rm -it -p 5000:5000 group6_classifier

OR

docker build -t group6_classifier .; if ($?) { docker run --rm -it -p 5000:5000 group6_classifier }
```

To Run App in Your Computer Run

```bash
docker run -p 5000:5000 group6_classifier
```
