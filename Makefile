all: sass

sass: $(shell find sass/)
	sass sass/materialize.scss public/css/materialize.css --style compressed

run-ui:
	browser-sync start --server public --files "public/**.*"
