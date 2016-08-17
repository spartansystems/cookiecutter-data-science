# Spartan Data Science

_A framework for rapid, collaborative, open source data science._

## Big Picture
Two of the biggest difficulties in Data Science are the
acquisition/cleaning/managing of data, and quickly sharing your work with both 
people who aren't Data Scientists and Data Scientists with whom you are 
collaborating.  The first of these problems will be addressed by the automation 
of data collection and setup from various data sources. This list of data 
sources will grow with time.  The collaboration problem will be solved by an
automated deployment of a Project Jupyter centered ecosystem.  This ecosystem
will provide a hassle and configuration free environmnet where Data Scientists 
can collaborate with each other and share their results with invested 
non-technical team members.


## Inspirations
* [Cookie Cutter Data Science](http://drivendata.github.io/cookiecutter-data-science/)
* [Project Jupyter](http://jupyter.org/)

## Directory Structure
```
├── LICENSE
├── Makefile           <- Makefile with commands like `make data` or `make train`
├── README.md          
├── data               <- Any data not in a database
│   ├── external       <- Data from third party sources.
│   ├── interim        <- Intermediate data that has been transformed.
│   ├── processed      <- The final, canonical data sets for modeling.
│   └── raw            <- The original, immutable data dump.
│
├── docs               <- A default Sphinx project; see sphinx-doc.org for details
│
├── models             <- Trained and serialized models, model predictions, or model summaries
│
├── notebooks          <- Jupyter notebooks. Naming convention is a number (for ordering),
│                         the creator's initials, and a short `-` delimited description, e.g.
│                         `1.0-jqp-initial-data-exploration`.
│
├── references         <- Data dictionaries, manuals, and all other explanatory materials.
│
├── reports            <- Generated analysis as HTML, PDF, LaTeX, etc.
│   └── figures        <- Generated graphics and figures to be used in reporting
│
├── requirements.txt   <- The requirements file for reproducing the analysis environment, e.g.
│                         generated with `pip freeze > requirements.txt`
│
├── src                <- Source code for use in this project.
│   ├── __init__.py    <- Makes src a Python module
│   │
│   ├── data           <- Scripts to download or generate data
│   │   └── make_dataset.py
│   │
│   ├── features       <- Scripts to turn raw data into features for modeling
│   │   └── build_features.py
│   │
│   ├── models         <- Scripts to train models and then use trained models to make
│   │   │                 predictions
│   │   ├── predict_model.py
│   │   └── train_model.py
│   │
│   └── visualization  <- Scripts to create exploratory and results oriented visualizations
│       └── visualize.py
│
└── tox.ini            <- tox file with settings for running tox; see tox.testrun.org
```

## Workflow Roadmap
1. Create new repo with [cookiecutter](https://github.com/audreyr/cookiecutter)
   using Spartan Data Science as the template. Some of the steps will include:
     * Name Project
     * Configure/Specify data sources.
2. Initial Deploy of JupyterHub configuration to EC2
3. Local Development (i.e. `./src`)
4. Deploy Local Changes to EC2 instance to be used in notebook development.
5. When models/features are developed, code will be easy to deploy.
