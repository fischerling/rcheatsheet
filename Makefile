CSS=style.css

.PHONY: all, html, pdf, clean

all: pdf html

rcheatsheet.html: rcheatsheet.md
	cat $< | ./highlight_code.py | pandoc -f markdown_github --css $(CSS) -o $@ -;
	sed -i -f remove_table_width.sed $@

rcheatsheet.pdf: rcheatsheet.html
	pandoc -f html $< -o $@


html: rcheatsheet.html

pdf: rcheatsheet.pdf

clean:
	rm *.pdf *.html

