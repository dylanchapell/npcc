# Intro
This repo contains a version of the nanopond genetic simulation modified by the Colorado College Scientific Simulation in Situ class while visiting the Lawrence Livermore National Laboratory.

Nanopond is the creation of Adam Ierymenko.  The original project may be found
at https://github.com/adamierymenko/nanopond

npcc is a modification of nanonpond hacked by Barry Rountree for use by the
Colorado Collge CP341 class.

This repo contains changes produced by the parallelism group, along with command line options built by another group in the class.
## Parallelism Group Members
Dylan Chapell, Kaija Van Zante, Louisa Penrice, Kathleen Shea

# Branches
## main
The main branch has two feature branches merged in. One fixed the warnings from -Wall and -Wextra in the original code. The other added in the commandline options built by another group in the class.
## run-profiling
This branch has code added to time which functions of nanopond and which pieces of the run function take the most significant amount of time.

## threading
This was branched from run-profiling, and adds code to count the total number of instructions that are executed by the program so instructions/second can be compared between implementations.

## splitpond
This branch split off from main with the goal of chamging from a shared memory design to a design where each thread has its own pool of memory that it acts upon. This was done to reduce instances of false sharing because of threads accessing cells right next to each other.

