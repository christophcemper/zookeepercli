all: hello run

hello:
	echo "Hello World, we're running make"

test:
	# go test demo_batch_processing_loop_test.go CFG_test.go -v
	# go test invalid_reactions_test.go CFG_test.go -v

build:
	go build -o zookeepercli go/cmd/zookeepercli.go
	
run: build
	zookeepercli --help

