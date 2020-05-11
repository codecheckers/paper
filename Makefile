codecheck-paper.pdf: codecheck-paper.Rmd bibliography.bib
	Rscript -e 'rmarkdown::render("$<")'

edit: venv
		$(VENV)/repo2docker --editable .
.PHONY: edit

clean:
	rm -r .venv/

# https://github.com/sio/Makefile.venv
include Makefile.venv
