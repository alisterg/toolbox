##############################################################################
# Frustrated by the inconsistencies in project commands, for example:
# 	`npm run dev`
# 	`npm run serve`
# 	`npm run start`
# 	`npm start`
#
# I'm just using Make as a command runner to keep project commands consistent
# 	`make run`
#

MODE ?= dev

all: build

build:
	# Build for production
	# EXAMPLE using environment (run with `make build MODE=prod`):
	# npm run build --env=$(MODE)

setup:
	# Setup the project (fetch dependencies etc)
	go mod tidy

clean:
	# Clean the build files or other artifacts
	go clean

test:
	# Run unit tests
	go test -v ./..

run:
	# Run the project locally
	go run

.PHONY: setup build clean test run

