install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	python -m pytest -vv --cov=app test_*.py  

format:	
	black *.py *.ipynb

lint:

	pylint --disable=R,C,protected-access --ignore-patterns=test_.*?py *.py *.ipynb

container-lint:
	docker run --rm -i hadolint/hadolint < Dockerfile

refactor: format lint

deploy:
	#deploy goes here
		
all: install lint test format deploy