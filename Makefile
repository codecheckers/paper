codecheck-paper.pdf: codecheck-paper.Rmd bibliography.bib
	Rscript -e 'rmarkdown::render("$<")'

