all:	doc.pdf

doc.pdf:	doc.tex refs.bib
	latexmk -pdf doc.tex
	latexmk -c doc.tex 
	rm -r doc.bbl

clean:
	rm -f doc.pdf
