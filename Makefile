all: resume.pdf

clean:
	-rm -f *.aux *.log *.pdf

# These "include" files with my personal details need to be created by hand.
CONTACT_FILES = address1.tex address2.tex email.tex phone.tex
$(CONTACT_FILES):
	@echo >&2 The file \`$@\' is missing, create it manually before running \`$(MAKE)\'
	@false

resume.pdf: $(CONTACT_FILES)

.tex.pdf:
	pdflatex $<

.DEFAULT: all
.PHONY: all clean
.SUFFIXES: .tex .pdf
