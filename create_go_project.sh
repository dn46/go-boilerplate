#!/bin/bash

# Check if project name is provided
if [ -z "$1" ]; then
  echo "Usage: $0 <project-name> <github-username>"
  exit 1
fi

PROJECT_NAME=$1
GITHUB_USERNAME=$2

# Create project directory
mkdir -p $PROJECT_NAME
cd $PROJECT_NAME

# initialize a new go module
go mod init github.com/$GITHUB_USERNAME/$PROJECT_NAME

# Create bin directory
mkdir -p bin

# Create main.go file
cat <<EOL > main.go
package main

import "fmt"

func main() {
    fmt.Println("Hello, World!")
}
EOL

# Create .gitignore file
cat <<EOL > .gitignore
bin/
*.exe
*.log
*.out
*.test
*.mod
*.sum
vendor/
EOL

# Create Makefile with build, clean, and run targets
cat <<EOL > Makefile
.PHONY: build clean run

build:
	@go build -o bin/appName

run: build
	@./bin/appName
EOL

# Initialize Git repository
git init
git add .
git commit -m "Initial commit with boilerplate code"

echo "Go project '$PROJECT_NAME' created successfully."
