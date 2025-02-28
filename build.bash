#!/bin/bash

nasm -f elf64 printhello.asm
ld -s -o ph printhello.o
./ph