projname := n.0.0.0
path := ../n.0.0.0
source := $(path)/source
build := $(path)/build
object := main.o

build: $(object)
	gcc -s $(build)/main.o -o $(build)/$(projname)

main.o:
	gcc -c $(source)/main.c -o $(build)/main.o

run:
	$(build)/./n.0.0.0

clean:
	rm $(build)/./n.0.0.0 $(build)/*.o
