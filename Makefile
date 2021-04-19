
valida:
	coffee -o /tmp/ `find . -name "*js.coffee"`


erd:
	bundle exec erd
	mv erd.pdf doc/
	convert doc/erd.pdf doc/erd.png
