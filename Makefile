SHELL := zsh

aalt.zwc: $(wildcard lib/*)
	zcompile -U $@ $^

.PHONY: check
check:
	ATF_SHELL=/bin/sh kyua test ; kyua report --verbose

.PHONY: clean
clean:
	rm -f aalt.zwc
