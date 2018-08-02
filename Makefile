setup:
	pipenv install --dev

lint:
	pipenv run pylint pydscheck

.PHONY: setup lint

### Makefile ends here
