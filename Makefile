resume: document.pdf
	pdflatex document.tex

clean:
	rm -f document.aux document.log

delete:
	rm document.pdf


