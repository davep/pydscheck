###############################################################################
# Common make values.
run  = pipenv run
lint = $(run) pylint

.PHONY: setup
setup:				# Install development/tool dependencies
	pipenv sync --dev

.PHONY: depsoutdated
depsoutdated:			# Show a list of outdated dependencies
	pipenv update --outdated

.PHONY: depsupdate
depsupdate:			# Update all dependencies
	pipenv update --dev

.PHONY: lint
lint:				# Run pylint over the code.
	$(lint) pydscheck

.PHONY: dscheck
dscheck:			# Run the tool over itself.
	$(run) ./pydscheck --extra-checks

.PHONY: help
help:				# Display this help
	@grep -Eh "^[a-z]+:.+# " $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.+# "}; {printf "%-20s %s\n", $$1, $$2}'

### Makefile ends here
