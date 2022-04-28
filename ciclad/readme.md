# Instructions for compiling

First execute
> bash set_paths_configure.sh

## Debugging option
To configure WRF with the simple debugging option, add '-d' to the ./configure command in set_paths_configure.sh: 
```
./configure -d
```
For an advanced debugging mode, add '-D' to the ./configure command in set_paths_configure.sh:
```
./configure -D
```

Then send the compile script to the queue
> qsub  compile.pbs 


If you do not need a clean compile, it is possible to compile interactively using
> compile_interactive.sh

