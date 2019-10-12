.data
	msg1:.asciiz"\nDigite um numero:"
	msg2:.asciiz"\nPar"
	msg3:.asciiz"\nImpar"
.text
main:
	#mostrar(msg1)
	li $v0, 4 #$v0 = 4
	la $a0, msg1 #$a0 = msg1
	syscall

	#ler($t0)
	li $v0, 5 #v0 = 5
	syscall #nesse comando, sobrescreveu o que tava em v0, isso é péssimo.

	add $t0, $v0, $zero #t0 = $t0 + $zero
	#criou uma cópia em $t0

	rem $t1, $t0, 2 #$t1 = $t0 % 2
	beq $t1, 0, se #se($t1==0) vá para se:
	j senao		#vá para senão:
	
	se:
	li $v0, 4 #v0 = 4
	la $a0, msg2 #$a0 = msg2
	syscall
	j fimse		#vá para fimse:

	senao:
	li $v0, 4 #v0 = 4
	la $a0, msg3 #$a0 = msg3
	syscall
	#não precisa colocar o j fimse, mas se colocar vai continuar funcionando

	fimse:
