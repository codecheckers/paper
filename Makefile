
codecheck-paper.pdf: codecheck-paper.tex bibliography.bib
	pdflatex -synctex=1 -interaction nonstopmode $<
	bibtex codecheck-paper
	pdflatex -synctex=1 -interaction nonstopmode $<
	pdflatex -synctex=1 -interaction nonstopmode $<

install-fontawsome:
	apt-get install fonts-font-awesome
	
codecheck-paper-rocker-container: codecheck-paper.tex bibliography.bib
	docker run -i -v $(shell pwd):/paper rocker/verse:4.0.3 R -q -e 'setwd("/paper"); tinytex::latexmk("codecheck-paper.tex")'

##codecheck-paper.pdf: codecheck-paper.Rmd bibliography.bib
##	Rscript -e 'rmarkdown::render("$<")'

.PHONY: clean install-fontawsome

clean:
	rm -f codecheck-paper.pdf *.aux *.bbl *.blg
