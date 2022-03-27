#### Hack modification

Conditions:
- next to the file with a cnf, there should be a file with cubes in format:
    - every cube is a sequence of ints, e.g. "1 -2 100 1801"
    - every cube on its own line
    - cube filename should end in txt, for example "cnfs/BvP_7_4.cnf" and "cnfs/BvP_7_4.txt"
- does not work with cloning heuristic set to 2

Under those conditions, here is a launch sample:

```
./painless -solver=glucose -d=1 -c=6 -wkr-strat=4 -shr-strat=1 -split-heur=2 -v=2 cnfs/BvP_7_4.cnf
```

Feel free to tweak the remaining params however necessary.

#### Here goes the rest of the initial README

##########################################################
##### PaInleSS: A Framework for Parallel SAT Solvers #####
##########################################################

Authors:  Ludovic LE FRIOUX, Saeed Nejati
Contact: ludovic@lrde.epita.fr, snejati@uwaterloo.ca


===== Content =====

- painless-src:
   Contains the code of the framework
   - clauses:
      Contains the code to manage shared clauses.
   - working:
      Code links to the worker organization.
   - sharing:
      Code links to the learnt clause sharing management.
   - solvers:
      Contains wrapper for the sequential solvers.
   - utils:
      Contains code for clauses management. But also useful data structures.

- documents:
   Contains documentation about the framework.
   Only if it has been compiled.

- glucose:
   Contains the code of glucose 4 with some little changes.

- lingeling:
   Contains the code of lingeling with some little changes.

- mapleCOMSPS:
   Contains the code of mapleCOMSPS with some little changes.

- minisat:
   Contains the code of minisat with some little changes.


===== To compile the project =====

- In the PaInleSS home directory use 'make' to compile.

- In the PaInleSS home directory use 'make docs' to compile the documentation.

- In the PaInleSS home directory use 'make clean' to clean.


===== PaInleSS can act as state of the art solvers =====

- glucose-syrup : -solver=glucose -shr-sleep=500000 -shr-strat=1 -d=4

- hordesat : -solver=lingeling -d=7 -shr-sleep=1500000 -shr-lit=1500
             -shr-strat=2

- treengeling : -solver=lingeling -shr-strat=1 -lbd-limit=-1 -shr-sleep=500000
                -wkr-strat=2
