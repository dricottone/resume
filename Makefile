pdf: delete
	pdflatex document.tex

pdf-open: pdf
	mupdf document.pdf

clean:
	rm -f document.aux document.log

delete:
	rm document.pdf


