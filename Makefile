all: build/cover.pdf
	xelatex main.tex -output-directory=build
	mv *.aux build/
	mv *.log build/

build/cover.pdf: cover.tex
	xelatex cover.tex -output-directory=build
	mv *.aux build/
	mv *.log build/
	mv cover.pdf build/
