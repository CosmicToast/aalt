SHELL := zsh

all: aalt.zwc docs/aalt.1

aalt.zwc: $(wildcard lib/*)
	zcompile -U $@ $^

docs: docs/aalt.1
docs/aalt.1: docs/aalt.1.adoc
	asciidoctor -b manpage $^ -o $@

.PHONY: clean
clean:
	rm -f aalt.zwc docs/aalt.1
