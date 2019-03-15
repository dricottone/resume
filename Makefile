pdf: delete
	pdflatex document.tex
	pdftoppm document.pdf preview -png -singlefile

pdf-open: pdf
	mupdf document.pdf

clean:
	rm -f document.aux document.log preview.png

delete:
	rm document.pdf


