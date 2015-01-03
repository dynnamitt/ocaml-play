
bins=sum

all: $(foreach bin,$(bins),$(bin).native)

%.native : %.ml
	corebuild $@

init:
	opam install batteries core utop

apt-get-packs:
	add-apt-repository ppa:avsm/ppa
	apt-get update
	apt-get install ocaml ocaml-native-compilers camlp4-extra opam
