.PHONY: clean clean-build clean-jupyter clean-pyc 

clean: clean-build clean-jupyter clean-pyc

clean-build:
	rm -fr build/
	rm -fr dist/
	rm -fr .eggs/
	find . -name '*.egg-info' -exec rm -fr {} +
	find . -name '*.egg' -exec rm -f {} +

clean-pyc:
	find . -name '*.pyc' -exec rm -f {} +
	find . -name '*.pyo' -exec rm -f {} +
	find . -name '*~' -exec rm -f {} +
	find . -name '__pycache__' -exec rm -fr {} +

clean-jupyter:
	find . -name '*.ipynb_checkpoints' -exec rm -rf {} +

requirements:
	pip install -r requirements.txt
	pip install -r requirements-dev.txt

install: requirements
	git clone https://github.com/blei-lab/dtm.git
	sudo apt-get install libgsl0-dev
	cd dtm/dtm && make
	mv dtm/dtm/ models/
	rm -rf dtm/
