pdf: delete
	pdflatex document.tex
	pdftoppm document.pdf preview -png -singlefile

pdf-open: pdf
	mupdf document.pdf

clean:
	rm -f document.aux document.log document.out preview.png

delete:
	rm document.pdf


