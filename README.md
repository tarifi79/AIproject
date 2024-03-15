### group 6 classifier

### Tools used

This was built with PyTorch/FastAI for the Machine Learning part and Flask as a Webserver. For containerization and easy deployment we will use Docker. The dataset in use is the [Food-101 Dataset] but we chose to only use 4-5 of the foods contained there.

### Train your own Model

open 'Train a Food Model.ipynb' in colab.

You can decide which two foods you want to classify by changing:

```python
#Deciding which two foods we want to classify
labelA = 'greek_salad'
labelB = 'hummus'
labelC = 'cheesecake'
labelD = 'falafel'
```

Of course it is also possible to train all the foods contained in the [Food-101 Dataset] but in order to achieve this you have to modify the code a bit.

At the end of the notebook it will download an export.pkl file, which is your model.

### Deploy your own Model

Deploying your on model is a easy as replacing the model (server/export.pkl) with your own model. Of course, it makes sense to also modify the HTML/CSS a bit to your liking.

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

Then you can deploy the Container to any Cloud Provider of your choosing.

I recommend [Render](https://render.com), which is what I used for my deployment but everything else should work fine, too.

**Steps for deploying on Render**

- Fork this repository

- Replace the model (export.pkl)

- Change the HTML and CSS to your liking

- In the Render Dashboard create a new Web Service

- Link your repository

- Make sure Docker is selected

- Done!
