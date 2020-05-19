extends KinematicBody2D

var velocitat_bola = Vector2.ZERO
var rng = RandomNumberGenerator.new()
var time = 0
var velocitat_maxima_y = 0



# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	velocitat_bola.x = 500
	velocitat_bola.y = 0


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	print(velocitat_maxima_y)
	velocitat_maxima_y = time*(50/3)
	$".."/Temps.text = str(time)
	move_and_slide(velocitat_bola)
	


func _on_Area2D_body_entered(body):
	if body.is_in_group("paret"):
		velocitat_bola.y *= -1
	elif body.is_in_group("porteria"):
		velocitat_bola.x *= -1
		if velocitat_bola.y > velocitat_maxima_y:
			velocitat_bola.y = velocitat_maxima_y
		elif velocitat_bola.y < velocitat_maxima_y:
			var my_random_number = rng.randf_range(-500, 500)
			velocitat_bola.y +=  my_random_number


func _on_Timer_timeout():
	time += 1
