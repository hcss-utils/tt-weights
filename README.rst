tt-weights
========


About
-----
This repository contains a local copy of topic & term weights project: 

* prepare BOWs and fit the `Dynamic Topic Model`
* generate R's `ggplot2` viz with topic weights distribution over time 
* export data for animated Flourish chart 

The reason we're now running this project locally is because both Bohdan and I couldn't 
make it work in the colab due to performance issues (see: Issues). 


Getting started
---------------
These instructions will get you a copy of the project up and running on 
your local machine for development and testing purposes.

Also, keep in mind that you have to put original raw files from GDrive into ``data/raw/``. 


Installation
^^^^^^^^^^^^
To use or contribute to this repository, first checkout the code. 
Then create a new virtual environment:

.. code-block:: console

    $ git clone https://github.com/hcss-utils/tt-weights.git
    $ cd tt-weights
    $ python -m venv env
    $ . env/Scripts/activate # Windows
    $ . env/bin/activate # Linux / MacOS
    $ pip install -r requirements.txt


Usage
^^^^^

* DTM model (already preprocessed?) is in ``models/``
* run notebooks consequently in ``notebooks/``


Project Organization
--------------------

.. code-block:: console

    ├── Makefile           <- Makefile with commands like `make clean`
    ├── README.md          <- The top-level README for developers using this project.
    ├── data
    │   ├── interim        <- Intermediate data that has been transformed.
    │   ├── processed      <- The final, canonical data sets for modeling.
    │   └── raw            <- The original, immutable data dump.
    │
    ├── docs               <- A default Sphinx project; see sphinx-doc.org for details
    │
    ├── models             <- DTM model
    │
    ├── notebooks          <- Jupyter notebooks. Naming convention is a number (for ordering),
    │                         the creator's initials, and a short `-` delimited description, e.g.
    │                         `1.0_hp_initial-data-exploration`.
    │
    ├── R                  <- R source files, e.g. ggplot2 timeseries visualization
    │
    ├── reports            <- Generated analysis as HTML, PDF, LaTeX, etc.
    │   └── figures        <- Generated graphics and figures to be used in reporting
    │
    └── requirements.txt   <- The requirements file for reproducing the analysis environment, e.g.
                              generated with `pip freeze > requirements.txt`
    