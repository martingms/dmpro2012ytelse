REPORT = report
TEMPS = toc bbl blg log aux

.PHONY: clean remake purge

all: $(REPORT).pdf

%.pdf:
	pdflatex $(@:.pdf=.tex)
	bibtex $(@:.pdf=.aux)
	pdflatex $(@:.pdf=.tex)
	pdflatex $(@:.pdf=.tex)

clean:
	for s in $(TEMPS); do rm -f $(REPORT).$$s; done

purge: clean
	-rm -f $(REPORT).pdf

remake:
	-rm -f $(REPORT).pdf
	$(MAKE) all
