
codecheck-paper.pdf: codecheck-paper.tex bibliography.bib
	pdflatex -synctex=1 -interaction nonstopmode $<
	bibtex codecheck-paper
	pdflatex -synctex=1 -interaction nonstopmode $<
	pdflatex -synctex=1 -interaction nonstopmode $<

codecheck-paper-rocker-container: codecheck-paper.tex bibliography.bib
	docker build --tag codecheckpaper .
	docker run --rm -i -v $(shell pwd):/paper codecheckpaper R -q -e 'setwd("/paper"); tinytex::latexmk("codecheck-paper.tex")'

##codecheck-paper.pdf: codecheck-paper.Rmd bibliography.bib
##	Rscript -e 'rmarkdown::render("$<")'

.PHONY: clean

clean:
	rm -f codecheck-paper.pdf *.aux *.bbl *.blg
	docker rmi -f codecheckpaper
