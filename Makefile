.PHONY:
thesis :
	R -e ' bookdown::render_book("index.Rmd", "bookdown::gitbook", quiet = TRUE, output_dir = "docs")'

pdf :
	R -e ' bookdown::render_book("index.Rmd", "bookdown::pdf_book", quiet = TRUE, output_dir = "docs")'

docx :
	R -e ' bookdown::render_book("index.Rmd", "bookdown::word_document2", quiet = TRUE, output_dir = "docs")'
