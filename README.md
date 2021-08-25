# gobuildsomething
Just a little POC for A Multi Platform Go Build.

This project uses a Makefile to build an application for the following targets:

* darwin/amd64
* linux/amd64
* linux/arm64
* linux/s390x

The application prints the current Go version, GOOS, and GOARCH.

## Quickstart

Clone the repository

```shell
git clone https://github.com/dixonwhitmire/gobuildsomething.git
```

Build the application

```shell
make all

user@mbp gobuildsomething % make all
GOOS=darwin GOARCH=amd64 go build -o build/gobuildsomething-darwin-amd64
GOOS=linux GOARCH=amd64 go build -o build/gobuildsomething-linux-amd64
GOOS=linux GOARCH=arm64 go build -o build/gobuildsomething-linux-arm64
GOOS=linux GOARCH=s390x go build -o build/gobuildsomething-linux-s390x
```

Test using the appropriate OS and architecture

```shell
user@mbp gobuildsomething % ls -l build

total 14544
-rwxr-xr-x  1 user  staff  1882000 Aug 25 16:44 gobuildsomething-darwin-amd64
-rwxr-xr-x  1 user  staff  1779596 Aug 25 16:44 gobuildsomething-linux-amd64
-rwxr-xr-x  1 user  staff  1843410 Aug 25 16:44 gobuildsomething-linux-arm64
-rwxr-xr-x  1 user  staff  1929532 Aug 25 16:44 gobuildsomething-linux-s390x

./build/gobuildsomething-darwin-amd64
Runtime Information
********************
Go Version: go1.17 
Operating System: darwin 
Architecture: amd64 
********************
```