extends KinematicBody2D
const PAD_SPEED = 150
var velocitat = Vector2(0,0)
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func _process(delta):
	velocitat.y = 0
	if Input.is_action_pressed("der_mover_arriba"):
		velocitat.y = -1000
	if Input.is_action_pressed("der_mover_abajo"):
		velocitat.y = 1000
	move_and_slide(velocitat)
	
