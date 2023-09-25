#In programm's folder
#In WSL
nasm -felf64 main.asm && gcc -no-pie -fno-pie main.o && ./a.out
