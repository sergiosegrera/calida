.DEFAULT_GOAL := run

run:
	@npx webpack --config webpack.dev.js --watch & ~/.air

build: clean
	@npx webpack --config webpack.prod.js & go build -o calida.o && ./calida.o

init:
	@go mod init
	@npm install
	@npm init

clean:
	@rm calida.o
	@rm ./static/*
