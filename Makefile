all: sass

sass: $(shell find sass/)
	sass sass/materialize.scss public/css/materialize.css
