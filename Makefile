all: build/cover.pdf
	xelatex main # this
	biber   main # is
	xelatex main # quite
	xelatex main # stupid
	mv *.{aux,log,xml,toc,bcf,blg,bbl} build/

build/cover.pdf: cover.tex
	xelatex cover.tex
	mv *.aux build/
	mv *.log build/
	mv cover.pdf build/
