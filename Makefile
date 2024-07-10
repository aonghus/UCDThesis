#SUBDIRS := $(wildcard [0-9][0-9]_*/. [0-9][0-9]a_*/.)
#SUBDIRS := $(wildcard 12_*/.)

#$(error    SUBDIRS is $(SUBDIRS))

PROJ=UCDThesis
.PHONY: $(PROJ).pdf all clean

# run latexmk from the top level dir, and it reads the .latexmkrc 
# file in this directory. All auxiliary files are dumped 
# in /tmp (we could put these somewhere else, maybe a build dir?)
# In the .latexmkrc I use lualatex because it handles fonts better.
$(PROJ).pdf: $(PROJ).tex
	latexmk -quiet -f -g -pdf -output-directory=. -aux-directory=out  $<
# mv out/$(PROJ).pdf .

clean:
	latexmk -c -quiet -f -g -pdf -output-directory=. -aux-directory=out