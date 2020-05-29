extends KinematicBody2D
var velocitat = Vector2()


func _process(delta):
	velocitat.y = 100
	move_and_slide(velocitat)
	
