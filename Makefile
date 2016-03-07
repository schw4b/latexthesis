BASENAME=mythesis

all:
	pdflatex $(BASENAME);sleep 0.1
	bibtex   $(BASENAME);sleep 0.1
	pdflatex $(BASENAME);sleep 0.1
	pdflatex $(BASENAME)
	egrep 'ä|ö|ü|à|é|è' biblio.clean.bib; sleep 0.2
clean:
	rm -f *.aux *.bbl *.blg *.log *.dvi *.ps *.lot *.lof *.toc *.out *.bak *.idx *~
