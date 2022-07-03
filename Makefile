THESIS_NAME = Thesis
SLIDES_NAME = Slides


full:
	pdflatex $(THESIS_NAME)
	bibtex $(THESIS_NAME)
	makeglossaries $(THESIS_NAME)
	pdflatex $(THESIS_NAME)
	pdflatex $(THESIS_NAME)


fast:
	pdflatex $(THESIS_NAME)


slides:
	pdflatex $(SLIDES_NAME)


clean:
	@echo Recursively removing auxiliary files...
	@for i in $(shell find -E . -type f -regex '.*.(acn|acr|alg|aux|bbl|blg|glg|glo|gls|idx|ist|lof|log|lot|out|toc|ind|ilg|fls|synctex.gz|fdb_latexmk|swp|snm|nav|vrb)'); do rm $$i; done


distclean: clean
	@echo Removing the output files...
	@rm -f $(THESIS_NAME).pdf
	@rm -f $(SLIDES_NAME).pdf
