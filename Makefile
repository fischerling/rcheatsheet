CSS=pandoc.css

.PHONY: html, pdf, clean, all

R_Cheatsheet.html: R_Cheatsheet.md
	cat $< | ./highlight_code.py | pandoc -f markdown_github --css $(CSS) --highlight-style kate -o $@ -;
	sed -i -f remove_table_width.sed $@

R_Cheatsheet.pdf: R_Cheatsheet.html
	pandoc -f html -o $@

html: R_Cheatsheet.html

pdf: R_Cheatsheet.pdf

clean:
	rm *.pdf *.html

all: pdf html
