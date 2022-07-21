figures/PowerPlot.tiff : code/PowerPlot.R
	$<

figures/ScalePlot.tiff : code/ScalePlot.R
	$<

docs/Thesis.pdf : ch1_introduction.Rmd \
	ch2_review.Rmd\
	ch3_framework.Rmd\
	ch4_simulation.Rmd\
	ch5_melanoma.Rmd\
	ch6_covid.Rmd\
	ch7_osteoporosis.Rmd\
	ch8_discussion.Rmd\
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
