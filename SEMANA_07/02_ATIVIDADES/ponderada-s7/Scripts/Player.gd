extends KinematicBody2D

var velocity = Vector2 .ZERO
var move_speed = 300
var gravity = 1600
var jump_force = -760
var is_grounded
onready var raycasts = $raycast


func _physics_process(delta: float) -> void:
	velocity.y += gravity * delta
	
	_get_input()
	
	if Input.is_action_pressed("jump"):
		velocity.y = jump_force /2
	
	
	velocity = move_and_slide(velocity)
	
	is_grounded = _check_is_ground()
	
	_set_animation()

func _get_input():
	velocity.x = 0
	var move_direction = int(Input.is_action_pressed("move_right")) - int(Input.is_action_pressed("move_left"))
	velocity.x  = lerp (velocity.x, move_speed * move_direction, 0.2)

	if move_direction !=0:  
		$texture.scale.x = move_direction

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("jump") and is_grounded:
		velocity.y = jump_force / 2

func _check_is_ground():
	for raycast in raycasts.get_children():
		if raycast.is_colliding():
			return true
	return false 	  	

func _set_animation():
	var anim = "idle"
	
	if !is_grounded:
		anim = "jump"
	elif velocity.x != 0:
		anim = "run"
		
	if $anim.assigned_animation != anim:
		$anim.play(anim)


func _on_Area2D_body_entered(body):
	get_tree().change_scene("res://Node2D.tscn")
