.data
.text
main:
	li $t0,11 #atribuindo à t0 o valor 11.
	li $t1,2  #t0 = 2

	add $t2,$t0,$t1 #t2 = $t0 + $t1
	sub $t3,$t0,$t1 #t3 = $t0 - $t1
	mul $t4,$t0,$t1 #t4 = $t0 * $t1
	div $t5,$t0,$t1 #t5 = $t0 / $t1

	#rem $t6,$t0,$t1 t6
	#o código acima equivale a $t0 % $t1