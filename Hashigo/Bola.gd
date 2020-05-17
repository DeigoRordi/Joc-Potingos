extends Area2D

var vel_max = 1000
var velocitat = Vector2()
var direccio = 1

func _ready():
	pass 
	
func set_bola_direction(dir):
	direccio = dir
	if dir == -1:
		$Sprite.flip_h = true
	

func _physics_process(delta):
	velocitat.x = vel_max * delta * direccio
	translate(velocitat)
	

func _on_VisibilityNotifier2D_screen_exited():
	queue_free()



func _on_Node2D_body_entered(body):
	if "PersonatgeBlau" in body.name:
		body.morir()
	if "PersonatgeVermell" in body.name:
		body.morir()
	queue_free()
	
