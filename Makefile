clean:
	rm -f *.aux *.log *.out *.pax *.pdf
	rm -f preview.png

build: clean
	pdflatex document.tex
	pdftoppm document.pdf preview -png -singlefile


