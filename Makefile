clean:
	rm -f *.aux *.log *.out *.pax
	rm -f *.bak
	rm -f *.pdf
	rm -f *.png

build: clean document.pdf preview.png

document.pdf: document.tex
	pdflatex document.tex

preview.png: document.pdf
	pdftoppm document.pdf preview -png -singlefile

sync: document.pdf
	rsync --recursive --links --compress --delete document.pdf alarm@arch3.intra.dominic-ricottone.com:/var/deploy/web/development/

.PHONY: clean build sync
