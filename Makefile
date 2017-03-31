.PHONY: all

all: outstanding-orange.zip

outstanding-orange.zip: manifest.json icon-128.png
	rm -f $@
	zip $@ $^

manifest.json: manifest.yaml
	./build $< > $@.tmp && mv $@.tmp $@
