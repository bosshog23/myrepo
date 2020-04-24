setup:
	python3 -m venv ~/.myrepo

install:
<<<<<<< Updated upstream
	pip install -r requirements.txt
=======
	pip install --upgrade pip&&\
        	pip install -r requirements.txt
>>>>>>> Stashed changes

test:
	python -m pytest -vv --cov=myrepolib tests/*.py
	python -m pytest --nbval notebook.ipynb


lint:
	pylint --disable=R,C myrepolib cli web

all: install lint test
