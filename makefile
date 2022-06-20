all: 
	pdflatex -shell-escape uw-ethesis
	bibtex uw-ethesis
	pdflatex -shell-escape uw-ethesis
	pdflatex -shell-escape uw-ethesis

clean:
	rm -f *.aux
	rm -f *.bbl
	rm -f *.blg
	rm -f *.gl*
	rm -f *.lo*
	rm -f *.symbols-*
	rm -f *.out 
	rm -f *.aux
	rm -f *.ist
	rm -f *.nomenclature-*
	rm -f *.toc