all: documentation

documentation: documentation/build/components.svg documentation/build/deployment.svg

documentation/build/%.svg: documentation/src/%.dot
	dot -Tsvg $< > $@
