PAPER = main
TEX = $(wildcard *.tex sections/*.tex)
BIB = refs.bib
FIGS = $(wildcard figures/*.pdf figures/*.png figures/*.tex graphs/*.pdf graphs/*.png)

.PHONY: all clean

all: main.pdf submission.pdf

submission.pdf: main.pdf
	cp main.pdf submission.pdf

$(PAPER).pdf: $(TEX) file*
	echo $(FIGS)
	pdflatex -halt-on-error $(PAPER)
#	bibtex $(PAPER)
	pdflatex -halt-on-error $(PAPER)
	pdflatex -halt-on-error $(PAPER)

clean:
	rm -f *.aux *.bbl *.blg *.log *.out $(PAPER).pdf
