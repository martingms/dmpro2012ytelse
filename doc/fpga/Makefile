IMG = fpga_states
TEMPS = log aux

.PHONY: clean remake purge

all: | $(IMG).pdf clean

%.pdf:
	pdflatex $(@:.pdf=.tex)

clean:
	for s in $(TEMPS); do rm -f $(IMG).$$s; done

purge: clean
	rm -f $(IMG).pdf

remake: purge
	@$(MAKE)
