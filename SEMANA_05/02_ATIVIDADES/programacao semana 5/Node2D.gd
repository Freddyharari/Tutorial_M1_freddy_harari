extends Node2D


var teste = false
var valor = 0
var numero = 0 # Variável com o nome corrigido
var lista: Array = [] # especificando o tipo de dados que a lista armazenará
var nome = ""


func _on_Button_pressed():
	# Coletando dados inseridos pelo usuário
	numero = int($LineEdit.text) # Falta o prefixo "$" antes do nome do nó LineEdit
	nome = $LineEdit.text 
	 

func _on_Button2_pressed():
	# Incrementando o número inserido pelo usuário
	var soma = 0 # Adicionando uma variável auxiliar para fazer a soma
	for i in range(10):
		soma += numero + i # Incrementando o número inserido pelo usuário
		lista.append(soma) # Adicionando a soma à lista
	$Label.text = str(soma) # Convertendo a soma em string para exibi-la no Label

	
func _on_Button3_pressed():
	# Mudando o nome do usuário de acordo com os dados da lista
	# Se houver algum número ímpar o nome deve adicionar "baldo" ao final
	#declarei a variavel auxiliar cont
	var cont = 0
	for x in lista:
		if (x % 2 == 1):
			cont += 1
	if (cont != 0):
		nome = nome + "baldo" 
		$Label2.text = nome
