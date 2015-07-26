# Master Thesis

This is my master thesis written in Markdown transformed in PDF with [pandoc](http://pandoc.org/) via a LaTeX template. I use this docker container ([xabufr/pandoc-latex-make-docker](https://github.com/xabufr/pandoc-latex-make-docker)) which contains the pandoc command line with a full texlive (LaTeX) distribution. It uses [Dia](https://wiki.gnome.org/Apps/Dia/) for schemas.

## Prerequisites

You need [Docker](https://www.docker.com/) installed if you want to use the ready-to-go container, or install LaTeX and pandoc on your own machine.

## Running

Using the docker container :

```
./build.sh
```

Using your own machine :

```
make memoire.pdf
```

## Files

```
.
├── build.sh            -> Bash script launching the docker container
├── fonts/              -> Fonts
├── images/             -> Images
├── links.md            -> Links used for source
├── Makefile            -> Launch pandoc
├── memoire.md          -> Markdown source file
├── pdf-template.tex    -> LaTeX template
├── README.md           -> This file
└── schemas/            -> Contains dia files
```
