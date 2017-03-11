
all: awk.pdf

awk.pdf: *.tex
	latexmk -pdf -pdflatex="xelatex" -use-make awk.tex

clean:
	latexmk -CA

.PHONY: all clean awk.pdf
