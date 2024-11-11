run: build runfile

build:
	fasm hello.asm
	mkdir bin
	mv hello ./bin

runfile:
	./bin/hello

clean:
	rm -rf bin
