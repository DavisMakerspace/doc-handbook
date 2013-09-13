all: html pdf

clean:
	@rm -f handbook.html handbook.pdf

pdf: handbook.md
	@echo "Building handbook.pdf"
	@multimarkdown -t latex handbook.md > handbook.tex
	@pdflatex handbook.tex > /dev/null
	@pdflatex handbook.tex > /dev/null
	@rm -f handbook.tex handbook.aux handbook.log handbook.out handbook.toc

html: handbook.md
	@echo "Building handbook.html"
	@multimarkdown handbook.md > handbook.html
#	@python html/format_html.py handbook.html
