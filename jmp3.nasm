leaw $2, %A
movw %A, %D
leaw $0, %A
movw %D, (%A) ; RAM[0] = 2
leaw $1, %A
movw (%A), %D 
leaw $2, %A
addw %D, (%A), %D ; %D = RAM[1] + RAM[2]
leaw $3, %A
subw %D, %A, %D ; %D = RAM[1] + RAM[2] - 3
leaw $END, %A ; prepara salto
jl           ; RAM[1] + RAM[2] < 0?
nop
leaw $0, %A
movw $1, (%A) ; RAM[0] = 1
END:          