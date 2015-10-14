SCHEMAS = $(wildcard schemas/*.dia)
SCHEMAS_OUT = $(addprefix build/, $(SCHEMAS:.dia=.tex))

SVG = $(wildcard svg/*.svg)
SVG_OUT_TEX = $(addprefix build/, $(SVG:.svg=.pdf_tex))
SVG_OUT_PDF = $(addprefix build/, $(SVG:.svg=.pdf))
ODS = $(wildcard spreadsheet/*.ods)
ODS_OUT = $(addprefix build/, $(ODS:.ods=.tex))

CONTENT = $(wildcard content/*)
MD = $(wildcard content/*.md)
MD_OUT = $(subst content/,build/,$(MD:.md=.tex))

TEX = $(subst content/,build/,$(wildcard content/*.tex))
BIB = $(subst content/,build/,$(wildcard content/*.bib))

COMPILE_PROGRAM = xelatex
COMPILE_COMMAND = $(COMPILE_PROGRAM) -interaction=errorstopmode -halt-on-error 

VERSIONS = $(basename $(notdir $(wildcard versions/*.tex)))
VERSIONS_OUT = $(addprefix build/,$(wildcard versions/*.tex))
MEMOIRES = $(addprefix memoire-,$(addsuffix .pdf,$(VERSIONS)))

all: $(MEMOIRES)

build/%.tex: content/%.md
	mkdir -p build/
	pandoc -o $@ --latex-engine xelatex --listings --chapters --template content/empty-pandoc-tpl.tex $<

build/%: content/%
	cp $< $@

build/%.bib: content/%.bib
	cp $< $@

memoire-%.pdf: versions/%.tex $(SCHEMAS_OUT) $(SVG_OUT_TEX) $(ODS_OUT) $(MD_OUT) $(TEX) $(BIB) build/attestation.jpg
	$(eval $@_NAME := $(notdir $(basename $<)))
	$(eval $@_FULLNAME := template-$($@_NAME))
	cp -r fonts/ images/ build/
	mkdir -p build/versions
	cp $< build/$<
	cd build && \
	cp template.tex template-$($@_NAME).tex && \
	$(COMPILE_COMMAND) --jobname=$($@_NAME) $($@_FULLNAME) && \
	makeglossaries $($@_NAME) && \
	biber $($@_NAME) && \
	$(COMPILE_COMMAND) --jobname=$($@_NAME) $($@_FULLNAME) && \
	$(COMPILE_COMMAND) --jobname=$($@_NAME) $($@_FULLNAME)
	 mv build/$($@_NAME).pdf memoire-$($@_NAME).pdf

build/schemas/%.tex: schemas/%.dia
	mkdir -p build/schemas
	dia -e $@ $<

build/svg/%.pdf_tex: svg/%.svg
	mkdir -p build/svg
	inkscape -z -f $< --export-pdf $(@:.pdf_tex=.pdf) --export-latex

build/spreadsheet/%.tex: spreadsheet/%.ods
	mkdir -p build/spreadsheet
	ssconvert --recalc -T "Gnumeric_html:latex" $< $@

	CHARSET=ISO8859-1; \
    if [ "$$CHARSET" != utf-8 ]; then \
	    echo "Converting $@ from $$CHARSET to UTF8"; \
		echo $$CHARSET;\
		iconv -f "$$CHARSET" -t utf8 "$@" -o $(@:.tex=.tex.utf8); \
	    mv $(@:.tex=.tex.utf8) $@ ;\
    fi

view: memoire-view.pdf
	xdg-open memoire-view.pdf

prez: slides.md
	pandoc -t revealjs --template=template-revealjs.html --incremental --standalone --variable theme="black" --variable transition="slide" slides.md -o slides.html

clean: 
	rm -rf build/

clean_all: clean
	rm -f $(MEMOIRES)
