# Go Boilerplate Creator

A script to automate the creation of boilerplate for Go projects. This script initializes a new Go project with a basic directory structure, necessary files, and a Go module.

## Instructions

- Download the repo
- Make the script executable with `chmod +x create_go_project.sh`
- Run the script to start a new project `./create_go_project.sh my_new_project my_github_username`

## Adding the script to PATH on Debian
- Make sure the script is executable
- Move the script to `usr/local/bin` with `sudo mv create_go_project.sh /usr/local/bin/create_go_project`
- Run the script from anywhere with `create_go_project project_name github_username`
