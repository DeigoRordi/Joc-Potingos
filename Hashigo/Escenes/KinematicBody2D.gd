extends KinematicBody2D
var velocitat = Vector2(0,0)

	

func _ready():
	velocitat.y = 0


func _process(delta):
	if get_parent().comensar == 1:
		velocitat.y = 100
		
	move_and_slide(velocitat)
	

