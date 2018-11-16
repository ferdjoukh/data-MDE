#!/bin/bash

mkdir "Scaffold"
java -jar grimm.jar g scaffold1.params
java -jar grimm.jar g scaffold1.params
java -jar grimm.jar g scaffold1.params

for dotfile in $(ls Graph/ | grep ".dot"); do
	
	name=$(echo $dotfile | cut -d. -f1)
	
	./grimm2scaffold.sh "Graph/$name.dot" "Scaffold/$name.scaffold" 

done