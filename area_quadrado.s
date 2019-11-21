#Algoritmo pra calcular a area de um quadrado. Se a area for maior ou igual a 16, vai pra 'desvio'.

.data
	msg1:.asciiz"\nDigite o valor do lado do quadrado: "
	msg2:.asciiz"\nO valor eh menor que 16! Ele eh: "
	msg3:.asciiz"\nO valor eh maior ou igual a 16! Aqui esta o valor: "
.text
main:

	li $v0, 4
	la $a0, msg1
	syscall

	li $v0, 5
	syscall
	add $t0, $v0, $zero

	#t0 = lado

	mul $t0, $t0, $t0

	bge $t0, 16, desvio
	j fim_desvio

fim_desvio:

	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 1
	add $a0, $t0, $zero
	syscall

	j end

desvio:
	li $v0, 4
	la $a0, msg3
	syscall

	li $v0, 1
	add $a0, $t0, $zero
	syscall

	j end
	
end: