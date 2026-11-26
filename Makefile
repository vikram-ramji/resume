# Build the resume PDF. Needs a LaTeX install (TeX Live / MiKTeX) with pdflatex.
all: resume.pdf

resume.pdf: resume.tex
	pdflatex -interaction=nonstopmode -halt-on-error resume.tex
	rm -f resume.aux resume.log resume.out

clean:
	rm -f resume.aux resume.log resume.out resume.pdf

.PHONY: all clean
