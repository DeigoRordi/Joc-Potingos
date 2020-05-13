extends KinematicBody2D


var velocitat = Vector2.ZERO
var gravetat = Vector2(0,10000)


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if $".."/Start.time_left == 0:
		velocitat.y += gravetat.y * delta
		if Input.is_action_just_pressed("Carrera_vermell"):
			position.x += 10
	var moviment = move_and_slide(velocitat, Vector2.UP)

