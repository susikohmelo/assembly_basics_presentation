
all:
	nasm -f elf64 assembly.asm -o assembly.o
	gcc main.c assembly.o

clean:
	rm -rf *.o

fclean: clean
	rm a.out

# You can do disassembly like this, but we won't in the presentation
#disassemble:
#	gcc -c main.c -o main.o
#	objconv -fnasm main.o disassembled.asm
