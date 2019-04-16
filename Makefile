.PHONY: setup
setup:
	pipenv sync --dev

.PHONY: lint
lint:
	pipenv run pylint pydscheck

### Makefile ends here
