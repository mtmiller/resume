all: resume.pdf

clean:
	-rm -f *.aux *.log *.pdf

resume.pdf: address1.tex address2.tex email.tex phone.tex

.tex.pdf:
	pdflatex $<

.DEFAULT: all
.PHONY: all clean
.SUFFIXES: .tex .pdf
