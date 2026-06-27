.PHONY: all clean

all: en-ops.pdf ru-ops.pdf

%.pdf: %.tex picture.jpg
	latexmk -xelatex -halt-on-error $<

clean:
	rm -f *.xdv *.fls *.aux *.fdb_latexmk *.log *.out *.pdf