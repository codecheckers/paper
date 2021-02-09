
codecheck-paper.pdf: codecheck-paper.tex bibliography.bib
	latexmk -xelatex codecheck-paper.tex

codecheck-paper1.pdf: codecheck-paper.tex bibliography.bib
	xelatex -synctex=1 -interaction nonstopmode $<
	bibtex codecheck-paper
	xelatex -synctex=1 -interaction nonstopmode $<
	xelatex -synctex=1 -interaction nonstopmode $<

.PHONY: clean

clean:
	rm -f codecheck-paper.pdf *.aux *.bbl *.blg
	docker rmi -f codecheckpaper
