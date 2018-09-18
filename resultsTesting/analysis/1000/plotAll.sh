#!/bin/bash

# for type in "DFSM" "Mealy" "Moore" "DFA"; do
for type in "DFA"; do
    for ES in 0 1 2; do
	for P in 5 10; do
		pdflatex.exe "\def\FSMtype{${type}}\def\Inputs{${P}}\def\ES{${ES}}\input{plotTestingResults.tex}"
		cp plotTestingResults.pdf testing${type}_p${P}_es${ES}.pdf
	done
    done
done

