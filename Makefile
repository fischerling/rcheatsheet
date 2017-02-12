CSS=style.css

.PHONY: all, html, pdf, clean

all: pdf html

rcheatsheet.html: rcheatsheet.md $(CSS)
	cat $< | ./highlight_code.py | pandoc -s -S -A footer.html -f markdown_github -H $(CSS) -o $@ -;
	sed -i -f remove_table_width.sed $@

rcheatsheet.pdf: rcheatsheet.html
	pandoc -f html $< -o $@


html: rcheatsheet.html

pdf: rcheatsheet.pdf

clean:
	rm *.pdf rcheatsheet.html

