
codecheck-paper.pdf: codecheck-paper.tex bibliography.bib
	pdflatex $<

##codecheck-paper.pdf: codecheck-paper.Rmd bibliography.bib
##	Rscript -e 'rmarkdown::render("$<")'

.PHONY: clean


clean:
	rm -f codecheck-paper.pdf
