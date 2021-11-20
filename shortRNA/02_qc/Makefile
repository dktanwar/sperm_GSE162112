##############################
## @Author : Deepak Tanwar  ##
## @Date :   20210917       ##
##############################

## Makefile to compile RMarkdown file to HTML.

all: task1
task1:
	Rscript -e 'rmarkdown::render("qc_report.Rmd", "html_document")' 2> STDERR > STDOUT
