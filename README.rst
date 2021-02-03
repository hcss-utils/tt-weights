tt-weights
==========


About
-----
Capturing the changes in topic terms over time using Dynamic LDA (Blei at al).


Getting started
---------------
These instructions will get you a copy of the project up and running on 
your local machine for development and testing purposes.


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

In order to run the model, see: ``notebooks/1.0_hp_dtm.ipynb``

Data requirements
*****************
In order to properly run the model, make sure you have corpus in specific format, 
e.i. the data should come in ``list[str]`` format (each row should contain a list of ngrams.  

Also, keep in mind that you have to put original raw files from GDrive into ``data/raw/``

Model binaries
**************
On linux this should not be a problem: 

.. code-block:: console

    git clone https://github.com/blei-lab/dtm.git
    sudo apt-get install libgsl0-dev
    cd dtm/dtm && make

On windows, use pre-compiled binaries from ``models/bin``

In both cases, specify full-path when initializing the model 

.. code-block:: python

    model = DtmModel(
      dtm_path="tt-weights/models/bin/dtm-win64.exe", # or "dtm/dtm/main",
      corpus=data["bows"].values,
      time_slices=time_seq,
      num_topics=20,
      id2word=dictionary,
      initialize_lda=True,
      top_chain_var=0.05    
    )

Project Organization
--------------------

.. code-block:: console

    ├── Makefile           <- Makefile with commands like `make clean`
    ├── README.md          <- The top-level README for developers using this project.
    ├── data
    │   ├── processed      <- The final, canonical data sets for modeling.
    │   └── raw            <- The original, immutable data dump.
    │
    ├── models             <- DTM model
    │   └── bin            <- Pre-compiled model binaries for Windows
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
    