extends Node2D


func _ready():
	pass


var icontador = 0


func _on_Button_pressed():
	get_tree().change_scene("res://erro1.tscn")
	icontador= icontador+1 

func _on_Button2_pressed():
	get_tree().change_scene("res://erro2.tscn")
	icontador= icontador+1 


func _on_Button3_pressed():
	get_tree().change_scene("res://erro 3.tscn")  
	icontador= icontador+1 
 

