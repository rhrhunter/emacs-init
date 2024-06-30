
.PHONY: help install

# Set the default target to 'help'
.DEFAULT_GOAL := help

# Get the directory where the Makefile is located
MAKEFILE_DIR := $(dir $(realpath $(firstword $(MAKEFILE_LIST))))

## Display help information about available targets
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

## Create symlinks for Emacs configuration files
install:
	@echo "Creating symlinks for Emacs configuration..."
	@mkdir -p ~/.emacs.d
	@ln -sfn $(MAKEFILE_DIR)init.el ~/.emacs.d/init.el
	@ln -sfn $(MAKEFILE_DIR)custom-lisp ~/.emacs.d/custom-lisp
	@echo "Symlinks created successfully."
