#!/bin/bash
clear
nasm -f elf64 variable.asm
ld -s -o variable_asm variable.o
./variable_asm