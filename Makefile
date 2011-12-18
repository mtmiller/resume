all: resume.pdf

clean:
	-rm -f *.aux *.log *.pdf

.tex.pdf:
	pdflatex $<

.DEFAULT: all
.PHONY: all clean
.SUFFIXES: .tex .pdf
