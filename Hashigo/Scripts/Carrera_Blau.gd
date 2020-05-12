extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.



func _process(delta):
	if $".."/Start.time_left == 0:
		position.y += 30
		if Input.is_action_just_pressed("Carrera_blau"):
			position.x += 10
