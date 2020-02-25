.DEFAULT_GOAL := run

run:
	@npx webpack --watch --config webpack.dev.js & ~/.air

build:
	@npx webpack --config webpack.prod.js & go build -o calida.o ./cmd/main.go && ./calida.o

init:
	@go mod init
	@npm install
	@npm init

clean:
	@rm calida.o
	@rm ./static/*

docker:
	@docker build -t calida .
