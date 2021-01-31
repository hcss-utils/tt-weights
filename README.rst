Template
========


About
-----
Write about 1-2 paragraphs describing the purpose of your project.


Getting started
---------------
These instructions will get you a copy of the project up and running on 
your local machine for development and testing purposes.


Installation
^^^^^^^^^^^^
To use or contribute to this repository, first checkout the code. 
Then create a new virtual environment:

.. code-block:: console

    $ git clone https://github.com/hcss-utils/PROJECT_NAME.git
    $ cd PROJECT_NAME
    $ python -m venv env
    $ . env/Scripts/activate # Windows
    $ . env/bin/activate # Linux / MacOS
    $ pip install -r requirements.txt


Usage
^^^^^
Write about 1-2 paragraphs describing how to run notebooks / use models.


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
    ├── models             <- Trained and serialized models, model predictions, or model summaries
    │
    ├── notebooks          <- Jupyter notebooks. Naming convention is a number (for ordering),
    │                         the creator's initials, and a short `-` delimited description, e.g.
    │                         `1.0_hp_initial-data-exploration`.
    │
    ├── reports            <- Generated analysis as HTML, PDF, LaTeX, etc.
    │   └── figures        <- Generated graphics and figures to be used in reporting
    │
    └── requirements.txt   <- The requirements file for reproducing the analysis environment, e.g.
                              generated with `pip freeze > requirements.txt`
    