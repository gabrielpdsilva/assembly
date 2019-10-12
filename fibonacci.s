.data
	 msg1:.asciiz"\nDigite um numero > que 2 e <= 12.\n"
	 msg2:.asciiz"\n"
.text
main:
	li $t1, 1	#t1 = primeiro
	li $t2, 1	#t2 = ultimo
	li $t3, 0	#t3 = cont
				#t4 = num

	enquantoInvalido:

	li $v0, 4
	la $a0, msg1
	syscall

	li $v0, 5
	syscall
	add $t4, $v0, $zero

	blt $t4, 2, enquantoInvalido
	bge $t4, 12, enquantoInvalido

	inicioenqto:
	blt $t3,$t4, enquanto
	
	j fimenquanto

	enquanto:
		add $t1, $t1, $t2	#primeiro = primeiro + ultimo
		add $t2, $t2, $t1	#ultimo = ultimo + primeiro

		li $v0, 1			#mostra o primeiro
		add $a0, $t1, $zero
		syscall

		li $v0, 4			#mostra msg2
		la $a0, msg2
		syscall

		li $v0, 1			#mostra o ultimo
		add $a0, $t2, $zero
		syscall

		li $v0, 4			#mostra msg2
		la $a0, msg2
		syscall

		add $t3, $t3, 2		#realiza o incremento cont+=2
		j inicioenqto
	fimenquanto: