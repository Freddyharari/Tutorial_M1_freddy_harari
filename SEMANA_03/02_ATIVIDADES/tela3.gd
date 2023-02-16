extends Node2D

var lista= ["lapis", "caneta", "borracha", "estojo", "apontador"]



# Called when the node enters the scene tree for the first time.
func _ready():
	passarlista()
func passarlista():
	for x in lista:
		$Label.text= $Label.text + x +"\n"
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button_pressed():
	get_tree().change_scene("res://Node2D.tscn")
