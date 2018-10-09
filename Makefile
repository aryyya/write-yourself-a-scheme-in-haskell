all:
	ghc *.hs -o wyasih -odir build -hidir build

.PHONY: clean
clean:
	rm -r build wyasih*
