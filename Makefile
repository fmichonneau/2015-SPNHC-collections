all: clean index.html

index.html: index.md
	pandoc -t revealjs -s index.md -V theme:dark -o index.html
	Rscript -e "source('fix_pandoc.R'); fix_pandoc('index.html')"

index.md: index.Rmd
	Rscript -e "library(knitr); knit('index.Rmd')"

clean:
	-rm index.md
	-rm index.html

.PHONY: all
