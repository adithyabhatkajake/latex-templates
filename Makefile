.PHONY: init
# Pull the common components from the `common-latex` repository
# HELP_CMD: init
init:
	git submodule add --force https://github.com/adithyabhatkajake/common-latex.git

.PHONY: update
# Updates the submodules (macros, packages, ...)
# HELP_CMD: update
update:
	git submodule update

.PHONY: clean
# CLean all the build files
# HELP_CMD: clean
clean:
	rm -rf build/*
	rm -rf main.{aux,log,out,pdf,blg,bbl}