# Instructions for compiling

## Configuration
To configure WRF, first execute:
```
./set_paths_configure.sh
```

## Configuration - Debugging option
To configure WRF with the simple debugging option, add '-d' to the ./configure command in set_paths_configure.sh: 
```
./configure -d
```
For an advanced debugging mode, add '-D' to the ./configure command in set_paths_configure.sh:
```
./configure -D
```

## Compilation
Once configuration is complete, send the compile script to the queue for WRF code compilation
```
qsub  compile.pbs 
```

NOTE: If you do not need a clean compile, it is possible to compile interactively using
```
./compile_interactive.sh
```
