example1: buildhello runhello

example2: buildasmc runasmc

buildasmc:
	fasm call_c.asm
	mkdir bin
	ld call_c.o -dynamic-linker /lib64/ld-linux-x86-64.so.2 -lc
	mv call_c.o ./bin
	mv a.out ./bin/linkingc

runasmc:
	./bin/linkingc


buildhello:
	fasm hello.asm
	mkdir bin
	mv hello ./bin

runhello:
	./bin/hello

clean:
	rm -rf bin
