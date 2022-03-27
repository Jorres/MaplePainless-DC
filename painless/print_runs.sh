#!/bin/bash
 
echo "Presuming you have 'painless' executable in current folder and 'input.cnf' as an input, run:"
echo "---"

for solver in "glucose" "lingeling" "minisat" "maple" "maplesat" "combo"; do
    echo "./painless -solver=$solver -d=1 -c=32 -wkr-strat=4 -shr-strat=1 -split-heur=2 -copy-mode=2 input.cnf"
done
