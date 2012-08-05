#!/bin/bash

grammars="Recipes Ingredients Instructions"

for i in ${grammars}; do
    mkdir -p src/ShinyChef/Parsers
	echo "Cleaning up grammar ${i}"
	pushd src/ShinyChef/Parsers 1>/dev/null
	rm -f src/ShinyChef/Parsers
	popd 1>/dev/null
	echo "Antlring grammar ${i}"
	pushd grammar 1>/dev/null
	antlr4ruby -o ../src/ShinyChef/Parsers $i.g
	popd 1>/dev/null
done

