extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.y += 30
	if $".."/Start.time_left == 0:
		if Input.is_action_just_pressed("Carrera_vermell"):
			position.x += 10

