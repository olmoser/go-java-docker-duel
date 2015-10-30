package main

import "fmt"
import "time"

func main() {
	t := time.Tick(1 * time.Second)
	for now := range t {
		tock := fmt.Sprint(now)
		fmt.Printf("%s\n", tock)
	}
}
