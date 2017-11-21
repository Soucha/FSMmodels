#!/bin/bash

for type in "DFSM" "Mealy" "Moore" "DFA"; do
#for type in "Mealy" "Moore"; do
	pdflatex.exe "\def\FSMtype{${type}}\input{plotHSIResults.tex}"
	cp plotHSIResults.pdf HSIdesign${type}.pdf
done

