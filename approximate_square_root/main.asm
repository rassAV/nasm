%macro Fprint 2
        movsd xmm0, qword %1
        mov  rdi, %2
        mov  eax, 1
        call printf
%endmacro

global main
default rel
extern printf

section .text
main:
        sub  rsp, 8

        fld qword [num]
        fsqrt
        fst qword [result]

        Fprint [num], str1
        Fprint [result], str2

        add  rsp, 8
        xor  eax, eax
        ret

section .data
        str1 db `\nКорень из %f `, 0
        str2 db `равен %f\n\n`, 0
        num dq 10.0
        result dq 0.0
