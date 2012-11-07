LATEX = pdflatex
BIBTEX = bibtex
REPORT = report
TEMPS = toc bbl blg log out lof lot lol aux
SUBDIRS = fb

.PHONY: clean remake purge

all: $(REPORT).pdf

%.pdf:
	$(LATEX) $*.tex
	$(BIBTEX) $*.aux
	$(LATEX) $*.tex
	$(LATEX) $*.tex

clean:
	for s in $(TEMPS); do rm -f $(REPORT).$$s; done
	for dir in $(SUBDIRS); do $(MAKE) -C $$dir clean; done

purge: clean
	-rm -f $(REPORT).pdf

remake:
	-rm -f $(REPORT).pdf
	$(MAKE) all
