###############################################################################
# Common make values.
run  = pipenv run
lint = $(run) pylint

.PHONY: setup
setup:				# Install development/tool dependencies
	pipenv sync --dev

.PHONY: lint
lint:				# Run pylint over the code.
	$(lint) pydscheck

.PHONY: help
help:				# Display this help
	@grep -Eh "^[a-z]+:.+# " $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.+# "}; {printf "%-20s %s\n", $$1, $$2}'

### Makefile ends here
