PRESENTATION = presentation
TEMPS = aux log nav out snm toc vrb
PDFFLAGS = -shell-escape
ENV = TEXINPUTS="./beamerntnu/:"

.PHONY: clean remake purge

all: $(PRESENTATION).pdf

%.pdf:
	$(ENV) pdflatex $(PDFFLAGS) $(@:.pdf=.tex)
	$(ENV) pdflatex $(PDFFLAGS) $(@:.pdf=.tex)

clean:
	for s in $(TEMPS); do rm -f $(PRESENTATION).$$s; done

purge: clean
	rm -f $(PRESENTATION).pdf

remake: | purge all
