package main

import (
	"time"
	"os/exec"
)

func main() {
	// Start Igor
	cmd := exec.Command("igor", "start")
	cmd.Run()

	// Wait 4 hours
	time.Sleep(4 * time.Hour)

	// Stop Igor
	cmd = exec.Command("igor", "stop")
	cmd.Run()

	// Generate
	cmd = exec.Command("igor", "go", "generate")
	cmd.Run()
}
