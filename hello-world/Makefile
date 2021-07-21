ASFLAGS = -felf
LDFLAGS = -n -melf_i386 -s

hello: hello.o
	ld $(LDFLAGS) -o $@ $<

hello.o: hello.asm
	nasm $(ASFLAGS) -o $@ $<

clean:
	rm -f hello.o hello
