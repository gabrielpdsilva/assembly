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
	syscall #nesse comando, sobrescreveu o que tava em v0, isso � p�ssimo.

	add $t0, $v0, $zero #t0 = $t0 + $zero
	#criou uma c�pia em $t0

	rem $t1, $t0, 2 #$t1 = $t0 % 2
	beq $t1, 0, se #se($t1==0) v� para se:
	j senao		#v� para sen�o:
	
	se:
	li $v0, 4 #v0 = 4
	la $a0, msg2 #$a0 = msg2
	syscall
	j fimse		#v� para fimse:

	senao:
	li $v0, 4 #v0 = 4
	la $a0, msg3 #$a0 = msg3
	syscall
	#n�o precisa colocar o j fimse, mas se colocar vai continuar funcionando

	fimse:
