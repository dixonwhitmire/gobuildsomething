BUILD_DIR := build
APP_NAME := gobuildsomething

all: build-darwin-amd64 build-linux-amd64 build-linux-arm64 build-linux-s390x

build-darwin-amd64:
	GOOS=darwin GOARCH=amd64 go build -o ${BUILD_DIR}/${APP_NAME}-darwin-amd64

build-linux-amd64:
	GOOS=linux GOARCH=amd64 go build -o ${BUILD_DIR}/${APP_NAME}-linux-amd64

build-linux-arm64:
	GOOS=linux GOARCH=arm64 go build -o ${BUILD_DIR}/${APP_NAME}-linux-arm64

build-linux-s390x:
	GOOS=linux GOARCH=s390x go build -o ${BUILD_DIR}/${APP_NAME}-linux-s390x

clean:
	go clean -i
	rm -rf ${BUILD_DIR}
	mkdir ${BUILD_DIR}

.PHONY: all build-darwin-amd64 build-linux-amd64 build-linux-arm64 build-linux-s390x clean