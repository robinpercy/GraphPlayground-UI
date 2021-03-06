all: build

sass: $(shell find sass/)
	sass sass/materialize.scss public/css/materialize.css --style compressed

run:
	browser-sync start --server public --files "public/**.*"

build-html:
	node_modules/metalsmith/bin/metalsmith 

build: sass build-html
