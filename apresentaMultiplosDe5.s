.data
	msg1:.asciiz"Digite um valor entre 1 e 100000: "
	msg2:.asciiz"Valor: "
	quebra_linha:.asciiz"\n"
.text
main:

	#variaveis/registradores usados

	#valor = $t0
	#res = $t1
	#i = $t2

	li $t0, 0 # iniciando a variavel 'valor' com 0
	li $t1, 0 # iniciando a variavel 'res' com 0
	li $t2, 1 # iniciando a variavel 'i' com 1
	
	#enquanto valor digitado for invalido
	enquantoInvalido:

		#apresenta a msg1
		li $v0, 4
		la $a0, msg1
		syscall

		#le o valor que o usuario digitou
		li $v0, 5
		syscall
		add $t0, $v0, $zero #atribuindo o valor digitando pra variavel $t0

 		# validando os valores digitados
    		blt $t0, 1, enquantoInvalido      # se $t0 < 1, volte pro enquantoInvalido
    		bgt $t0, 100000, enquantoInvalido   # se $t0 > 100000, volte pro enquantoInvalido

	enquanto:
		mul $t1, $t2, 5			# $t1 = $t2 * 5, ou res = i * 5
		
		bgt $t1, $t0, fim		#se re > valor, vá para FIM

		#mostra msg2
		li $v0, 4
		la $a0, msg2
		syscall

		#mostra res
		li $v0, 1
		add $a0, $t1, $zero
		syscall

		#quebra linha
		li $v0, 4
		la $a0, quebra_linha
		syscall

		add $t2, $t2, 1			#i++
		blt $t2, $t0, enquanto		# se i < valor, volte para ENQUANTO
	fim: