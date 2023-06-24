ROOT_DIR:=$(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))
STARTUP_FILES:=$(wildcard profile_default/startup/*.py)

.PHONY: .jupyter/*.py .ipython/profile_default/startup/*.ipy

.jupyter/*.py .ipython/profile_default/startup/*.ipy:
	ln -fs $(ROOT_DIR)/$(@) $(HOME)/$(@)

install: .PHONY