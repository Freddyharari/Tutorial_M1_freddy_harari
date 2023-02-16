extends Node2D


var lista= ["endrick", "dudu", "veiga"]
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	for x in lista:
		$Label.text= $Label.text + x +"\n"


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button_pressed():
	get_tree().change_scene("res://Node2D.tscn")
