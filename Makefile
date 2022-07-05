figures/PowerPlot.tiff : code/PowerPlot.R
	$<

docs/Thesis.pdf : introduction.Rmd \
	figures/PowerPlot.tiff
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
