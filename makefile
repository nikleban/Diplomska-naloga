NAME = diploma-predloga

all:
	pdflatex --shell-escape $(NAME).tex
	biber $(NAME)
	pdflatex --shell-escape $(NAME).tex
	pdflatex --shell-escape $(NAME).tex

clean:
	rm -f $(NAME).aux $(NAME).bbl $(NAME).bcf $(NAME).blg
	rm -f $(NAME).log $(NAME).out $(NAME).run.xml $(NAME).toc
	rm -f $(NAME).lof $(NAME).lot
	rm -f _*.data.minted
