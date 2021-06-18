.PHONY: default
default: build

.PHONY: init
# CMD: init
# init_text: Pull the common components from the `common-latex` repository
init:
	@git submodule add --force https://github.com/adithyabhatkajake/common-latex.git

.PHONY: update
# CMD: update
# update_text: Updates the submodules (macros, packages, ...)
update:
	@git submodule update

.PHONY: clean
# CMD: clean
# clean_text: CLean all the build files
clean:
	@latexmk -C
	@rm -rf main.{aux,log,out,pdf,blg,bbl,.fdb_*}

.PHONY: build
# CMD: build
# build_text: Build the pdf
build:
	@echo "Building files"
	@latexmk -quiet
	@echo "PDF built in build/main.pdf"

.PHONY: help
# CMD: help
# help_text: Print this help
help:
	@grep "CMD: " ./Makefile | sed '/grep/d' | cut -d: -f2