.PHONY: clean all

all: report.pdf fancy_report.pdf

clean:
	rm -rf .ipynb_checkpoints
	rm -f *.tex
	rm -f *.log
	rm -f *.Rhistory
	rm -f *.pdf
	rm -f *.html

report.pdf: mnist
	R -e "rmarkdown::render('report.Rmd', output_file = 'report.pdf')"

fancy_report.pdf: mnist
	R -e "rmarkdown::render('report.Rmd', output_format = MRCBSUReport::mrcbsu_report_pdf(), output_file = 'fancy_report.pdf')"
