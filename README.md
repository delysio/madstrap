# MadStrap

Simple Atari Mad-Pascal common project bootstrap.

Designed to speed up project development startup, providing starting set of useful optional features:

- two startup files start_os for OS dependent application and start_nos for ful RAM access
- memory layout defined in separate file (memory.inc)
- constants defined in separate file (const.inc)
- type definitions in separate file (types.inc)
- external resource loading (RMT, ASM, strings)
- external library path definition ([blibs](https://gitlab.com/bocianu/blibs) as default)
- custom user defined charset loading
- player missile graphics initialized and used
- user defined display list in separate file (dlist.asm)
- custom vertical blank interrupt
- custom display list interrupt
- interrupt routines declared in separate file (interrupts.inc)
- utils folder with useful tools and scripts
- example $defines
- example $EVAL tables
- packed folder with useful batch tools generating packed assets from png files (packed/rebuild.sh)
- example bash scripts for image conversions and APL/ZX compression (assetes/rebuild.sh)
- example batch file for executable building (build.bat)
- example intro.pas merged as INIT block (set ADDINTRO=0 in *build.bat* to disable)

You just download, rename, and comment/uncomment/remove all features useful in your project.
