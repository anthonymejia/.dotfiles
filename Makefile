all: deps install

deps:
	git submodule update --init --recursive

install:
	ls -d */ | xargs stow

clean: 
	ls -d */ | xargs stow -D
