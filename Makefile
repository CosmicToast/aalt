SHELL := zsh

aalt.zwc: $(wildcard lib/*)
	zcompile -U $@ $^

.PHONY: clean
clean:
	rm -f aalt.zwc
