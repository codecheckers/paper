
codecheck-paper.pdf: codecheck-paper.tex bibliography.bib
	pdflatex -synctex=1 $<
	bibtex codecheck-paper
	pdflatex -synctex=1 $<
	pdflatex -synctex=1 $<



##codecheck-paper.pdf: codecheck-paper.Rmd bibliography.bib
##	Rscript -e 'rmarkdown::render("$<")'

.PHONY: clean


clean:
	rm -f codecheck-paper.pdf
