NOMBRE_LATEX = Thesis


full:
	pdflatex $(NOMBRE_LATEX)
	bibtex $(NOMBRE_LATEX)
	makeglossaries $(NOMBRE_LATEX)
	pdflatex $(NOMBRE_LATEX)
	pdflatex $(NOMBRE_LATEX)


fast:
	pdflatex $(NOMBRE_LATEX)


clean:
	@echo Recursively removing auxiliary files...
	@for i in $(shell find -E . -type f -regex '.*.(acn|acr|alg|aux|bbl|blg|glg|glo|gls|idx|ist|lof|log|lot|out|toc)'); do rm $$i; done


distclean: clean
	@echo Removing the output file...
	@rm -f $(NOMBRE_LATEX).pdf
