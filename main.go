package main

import (
	"fmt"
	"runtime"
)

func main() {
	fmt.Println("Runtime Information")
	fmt.Println("********************")
	fmt.Printf("Go Version: %s \n", runtime.Version())
	fmt.Printf("Operating System: %s \n", runtime.GOOS)
	fmt.Printf("Architecture: %s \n", runtime.GOARCH)
	fmt.Println("********************")
}
