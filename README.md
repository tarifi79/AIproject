### group 6 classifier

### Tools used

This was built with PyTorch/FastAI for the Machine Learning part and Flask as a Webserver. For containerization and easy deployment we will use Docker. The dataset in use is the https://course20.fast.ai/datasets.html but we chose to only use 10 of the foods contained there.

### Train your own Model

open 'Train a Food Model.ipynb' in colab.

You can decide which two foods you want to classify by changing:

```python
#After many experiments we decided to pick the following foods
labelA = 'edamame'
labelB = 'churros'
labelC = 'chicken_quesadilla'
labelD = 'deviled_eggs'
labelE = 'ramen'
labelF = 'seaweed_salad'
labelG = 'waffles'
labelH = 'red_velvet_cake'
labelI = 'club_sandwich'
labelJ = 'onion_rings'
```

### Deployment

Deploying your model is straightforward:

1. Replace the existing server/export.pkl with your newly trained model file.
2. If you wish to modify the front-end, update the HTML/CSS files to match your desired aesthetics and functionality.
3. Ensure you have Docker running.
4. On terminal make sure you are in directory "...\AIproject" or whatever you named this project folder.
5. Build the Docker container using the following command.

```bash
docker build -t group6_classifier . && docker run --rm -it -p 5000:5000 group6_classifier
```

For PowerShell users, you can use the following command sequence:

```bash
docker build -t group6_classifier .; if ($?) { docker run --rm -it -p 5000:5000 group6_classifier }
```

If your application is Docker-containerized, initiate it with:

```bash
docker run -p 5000:5000 group6_classifier
```

### Group Contribution

-Mohammed Darras: Data Training, Experiment in food list.
-Tony Han: Data Training, Experiment in food list.
-Prince Duru: API, Deployment, Experiment in the Data.
-Ami Yogeshbhai Gajjar: Front End, add comments to train code, and Experiment in the data list.
-Syeda Maria Manzoor: None.
