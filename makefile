all: 
	pdflatex -shell-escape uw-ethesis-mmath-jyou
	bibtex uw-ethesis-mmath-you
	pdflatex -shell-escape uw-ethesis-mmath-jyou
	pdflatex -shell-escape uw-ethesis-mmath-jyou

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
	rm -rf svg-inkscape
