
all: awk.pdf

awk.pdf: *.tex
	latexmk -pdf -pdflatex="xelatex -interactive=nostopmode" \
		-use-make awk.tex

clean:
	latexmk -CA

.PHONY: all clean awk.pdf
