ROOT_DIR:=$(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))
STARTUP_FILES:=$(wildcard profile_default/startup/*.py)

.PHONY: .jupyter/*.py .ipython/*.py .ipython/profile_default/startup/*.py

.jupyter/*.py .ipython/*.py .ipython/profile_default/startup/*.py:
	ln -fs $(ROOT_DIR)/$(@) $(HOME)/$(@)

install: .PHONY