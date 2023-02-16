extends Node2D

var lista = []

func _on_Button_pressed():
	lista.append($LineEdit.text)
	$Label.text = String(lista)



	


func _on_Button2_pressed():
	get_tree().change_scene("res://Node2D.tscn")
