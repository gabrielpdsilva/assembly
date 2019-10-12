.data
	msg1:.asciiz"\nDigite um numero >= 0 e <= 10: "
	msg2:.asciiz"\nO valor eh: "
.text
main:

	#$t0 = valor digitado pelo usuario
	#$t1 = 1

	li $t1,1

	enquantoInvalido:

	#mostra msg1
	li $v0,4
	la $a0,msg1
	syscall

	#le o valor digitado
	li $v0,5
	syscall
	add $t0,$v0,$zero

	blt $t0,0 enquantoInvalido

	inicioenqto:
	bgt $t0,1,enquanto
	
	#escreve $t1
	li $v0,1
	add $a0, $t1, $zero
	syscall
	j fimenquanto

	enquanto:
	mul $t1,$t1,$t0		#$t1=$t1 * $t0;
	sub $t0,$t0,1 		# t0--;
	j inicioenqto		#pula pro inicioenquanto, validando a condição

	fimenquanto: