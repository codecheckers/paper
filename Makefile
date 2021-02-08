
codecheck-paper.pdf: codecheck-paper.tex bibliography.bib
	latexmk -xelatex codecheck-paper.tex


codecheck-paper1.pdf: codecheck-paper.tex bibliography.bib
	xelatex -synctex=1 -interaction nonstopmode $<
	bibtex codecheck-paper
	xelatex -synctex=1 -interaction nonstopmode $<
	xelatex -synctex=1 -interaction nonstopmode $<

codecheck-paper-rocker-container: codecheck-paper.tex bibliography.bib
	docker build --tag codecheckpaper .
	docker run --rm -i -v $(shell pwd):/paper codecheckpaper R -q -e 'setwd("/paper"); tinytex::latexmk("codecheck-paper.tex", engine="xelatex")'

##codecheck-paper.pdf: codecheck-paper.Rmd bibliography.bib
##	Rscript -e 'rmarkdown::render("$<")'

.PHONY: clean

clean:
	rm -f codecheck-paper.pdf *.aux *.bbl *.blg
	docker rmi -f codecheckpaper
