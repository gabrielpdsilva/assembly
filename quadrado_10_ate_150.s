#Calcular e mostrar o quadrado dos números entre 10 e 150.

.data
	msg1:.asciiz"Quadrado de "
	msg2:.asciiz" = "
	msg3:.asciiz"\n"
.text
main:

	#contador = $t0
	#valor = $t1

	li $t0, 10

	j inicio_loop

	inicio_loop:
	ble $t0, 150, loop
	j end

	loop:

	mul $t1, $t0, $t0		#$t1 = $t0 * $t0

	li $v0, 4
	la $a0, msg1
	syscall

	li $v0, 1
	add $a0, $t0, $zero
	syscall

	li $v0, 4
	la $a0, msg2
	syscall

	li $v0, 1
	add $a0, $t1, $zero
	syscall

	li $v0, 4
	la $a0, msg3
	syscall

	add $t0, $t0, 1
	j inicio_loop

	end: