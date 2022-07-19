figures/PowerPlot.tiff : code/PowerPlot.R
	$<

figures/ScalePlot.tiff : code/ScalePlot.R
	$<

docs/Thesis.pdf : introduction.Rmd \
	review.Rmd\
	simulation.Rmd\
	framework.Rmd\
	melanoma.Rmd\
	covid.Rmd\
	figures/PowerPlot.tiff \
	figures/ScalePlot.tiff \
	preamble.tex
	R -e ' bookdown::render_book("index.Rmd", "bookdown::pdf_book", quiet = TRUE, output_dir = "docs")'



.PHONY:
thesis :
	R -e ' bookdown::render_book("index.Rmd", "bookdown::gitbook", quiet = TRUE, output_dir = "docs")'

pdf :
	make docs/Thesis.pdf

docx :
	R -e ' bookdown::render_book("index.Rmd", "bookdown::word_document2", quiet = TRUE, output_dir = "docs")'

clean :
	rm -rf docs/*
