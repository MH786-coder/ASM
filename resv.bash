#!/bin/bash

clear
nasm -f elf64 reserve.asm
ld -s -o resv reserve.o
./resv