show: document.pdf
	evince document.pdf

install:
	sudo apt-get install -y texlive-lang-cyrillic texlive-latex-extra

plot.tex: plot.plt
	gnuplot plot.plt

document.pdf: document.tex plot.tex
	pdflatex document.tex

clean:
	rm document.aux document.log document.pdf plot.tex
