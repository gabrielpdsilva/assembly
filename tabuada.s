.data
	msg1:.asciiz"\nDigite um numero: "
	msg2:.asciiz"\n"
.text
main:
	#mostrar(msg1)
	li $v0, 4 	#o 4 escreve caractere
	la $a0, msg1
	syscall

	#la � texto...
	#sempre que for fazer o processador ler ou escrever, � necess�rio o syscall
	
	#ler($t0)
	li $v0, 5	#o 5 l� inteiro
	syscall
	add $t0, $v0, $zero

	#contador
	li $t1, 0 #n�o precisaria fazer isso, pois naturalmente j� come�a com 0.
	
	enquanto:
	mul $t2, $t0, $t1

	#mostrar($t2)
	li $v0, 1
	add $a0, $t2, $zero
	syscall

	#mostrar(msg2)
	li $v0, 4
	la $a0, msg2
	syscall

	#faz o incremento de t1 (t1++)
	add $t1, $t1, 1

	#confere se � <= 10
	ble $t1, 10, enquanto

	#detalhe interessante: este � o do while