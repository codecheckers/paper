
all: rr.pdf annotate-cert-crop.pdf

rr.pdf: rr.svg
	inkscape --export-type="pdf" rr.svg


annotate-cert.pdf: annotate-cert.tex cert-2020-012-4up.pdf
	pdflatex annotate-cert

cert-2020-012-4up.pdf: cert-2020-012.pdf
	pdfjam --nup 2x2 --frame false --suffix '4up' cert-2020-012.pdf

annotate-cert-crop.pdf: annotate-cert.pdf
	pdfcrop annotate-cert.pdf


.PHONY: clean

clean:
	rm -f cert-2020-012-4up.pdf annotate-cert-crop.pdf annotate-cert.pdf rr.pdf
