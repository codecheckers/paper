
codecheck-paper.pdf: codecheck-paper.tex bibliography.bib
	pdflatex -synctex=1 -interaction nonstopmode $<
	bibtex codecheck-paper
	pdflatex -synctex=1 -interaction nonstopmode $<
	pdflatex -synctex=1 -interaction nonstopmode $<



##codecheck-paper.pdf: codecheck-paper.Rmd bibliography.bib
##	Rscript -e 'rmarkdown::render("$<")'

.PHONY: clean


clean:
	rm -f codecheck-paper.pdf *.aux *.bbl *.blg
