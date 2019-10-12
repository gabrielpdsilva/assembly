.data
	msg1:.asciiz"\nDigite um numero inteiro: "
	msg2:.asciiz"\nA raiz inteira eh: "
.text
main:

	# t0 = m
	# t1 = i
	# t2 = n

	#mostra mensagem
	li $v0, 4
	la $a0, msg1
	syscall

	#lê o valor
	li $v0, 5
	syscall
	add $t0, $v0, $zero

	# $t1 = 1
	li $t1, 1

	inicioenqto:
		bge $t0, $t1, enquanto
		j fimenquanto

		enquanto:
			sub $t0, $t0, $t1	# m = m - i
			add $t1, $t1, 2		# i = i + 2
			add $t2, $t2, 1		# n = n + 1
			j inicioenqto
			

	fimenquanto:
		#mostra msg2
		li $v0, 4
		la $a0, msg2
		syscall

		#mostra o valor
		li $v0, 1
		add $a0, $t2, $zero
		syscall