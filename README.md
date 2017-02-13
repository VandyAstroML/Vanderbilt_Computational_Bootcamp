
This repository can be found at: [http://vandyastroml.github.io/2017_Spring_Vandy_Computational_Workshop.html](http://vandyastroml.github.io/2017_Spring_Vandy_Computational_Workshop.html)


Vandy Computational Workshop
==============================

Repository for the Computational Workshop Series Fall 2016-Spring 2017 taught at Vanderbilt University

You can run __all__ the notebooks interactively by clicking on the following link:

[![Binder](http://mybinder.org/badge.svg)](http://mybinder.org:/repo/vandyastroml/vanderbilt_computational_bootcamp)


Project Organization
------------

Repository template taken from "[Cookiecutter Data Science](https://drivendata.github.io/cookiecutter-data-science/)"

    ├── LICENSE
    ├── Makefile           <- Makefile with commands like `make data` or `make train`
    ├── README.md          <- The top-level README for developers using this project.
    ├── data
    │   ├── external       <- Data from third party sources.
    │   ├── interim        <- Intermediate data that has been transformed.
    │   ├── processed      <- The final, canonical data sets for modeling.
    │   └── raw            <- The original, immutable data dump.
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
    │   └── figures        <- Generated graphics and figures to be used in reporting
    │
    ├── requirements.txt   <- The requirements file for reproducing the analysis environment, e.g.
    │                         generated with `pip freeze > requirements.txt`
    │
    ├── src                <- Source code for use in this project.
    │   ├── __init__.py    <- Makes src a Python module
    │   │
    │   ├── data           <- Scripts to download or generate data
    │   │   └── make_dataset.py
    │   │
    │   ├── features       <- Scripts to turn raw data into features for modeling
    │   │   └── build_features.py
    │   │
    │   ├── models         <- Scripts to train models and then use trained models to make
    │   │   │                 predictions
    │   │   ├── predict_model.py
    │   │   └── train_model.py
    │   │
    │   └── visualization  <- Scripts to create exploratory and results oriented visualizations
    │       └── visualize.py
    │
    └── tox.ini            <- tox file with settings for running tox; see tox.testrun.org

## Notebook Notes

This is folder, in which you can annotate the notebooks, run the code, etc.

Simply run the file "__nb_copy.sh__" in the _main directory_,
followed by the week number to access the live version of the 
notebook of that week.

```bash
./nb_copy.sh week_number ow_opt
```
For help:

```bash
./nb_copy.sh -h
```

### Parameters:
----
- `week_num`: number of the week of the iPython notebook to copy
- `ow_opt': if "y", it will overwrite the notebooks in `nb_copy_path'.



__Note__:

* The __`week_number`__ must be followed by a `0' _if_  the week number is __below 10__.


### Example
----
#### Getting the help menu of the executable

```bash
:$ ./nb_copy.sh -h

How to run:    ./nb_copy.sh week_num overwrite_opt
  * week_num: number of the week of the iPython notebook to copy
  * ow_opt: if 'true', it will overwrite the notebooks in 'nb_copy_path'
```

or 

```bash
:$ ./nb_copy.sh

How to run:    ./nb_copy.sh week_num overwrite_opt
  * week_num: number of the week of the iPython notebook to copy
  * ow_opt: if 'true', it will overwrite the notebooks in 'nb_copy_path'
```


#### Copying the new directory of "Week 04" (with overwriting)

```bash
:$ ./nb_copy.sh 04 y

git pull
Already up-to-date.
cp  -rp ./notebooks/Week_04 ./notebooks_notes/
jupyter notebook ./notebooks_notes/Week_04/*.ipynb
```

#### Copying the new directory of "Week 04" (without overwriting)
In case you had already made some notes on an __existing__ notebook

```bash
:$ ./nb_copy.sh 04

git pull
Already up-to-date.
jupyter notebook ./notebooks_notes/Week_04/*.ipynb
```