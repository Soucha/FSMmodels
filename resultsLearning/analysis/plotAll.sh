#!/bin/bash

for type in "DFSM" "Mealy" "Moore" "DFA"; do
#for type in "Mealy" "Moore"; do
    for P in 5 10; do
	pdflatex.exe "\def\FSMtype{${type}}\def\Inputs{${P}}\input{plotLearningResults.tex}"
	cp plotLearningResults.pdf learning${type}_p${P}.pdf
    done
done

