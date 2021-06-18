.PHONY: init

% Pull the common components from the `common-latex` repository
% CMD: init
init:
	git submodule add --force https://github.com/adithyabhatkajake/common-latex.git

