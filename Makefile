.PHONY: start
start:
	python run.py

.PHONY: install
install:
	pip install -U -r requirements.txt

.PHONY: test
test:
	pytest

.PHONY: format
format:
	isort .
	black .
