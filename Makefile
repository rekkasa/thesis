.PHONY:
thesis :
	R -e ' bookdown::render_book("index.Rmd", "bookdown::gitbook", quiet = TRUE, output_dir = "docs")'
