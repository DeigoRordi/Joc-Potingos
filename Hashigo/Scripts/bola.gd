extends KinematicBody2D

var velocitat_bola = Vector2.ZERO
var rng = RandomNumberGenerator.new()
var time = 0
var velocitat_maxima_y = 0
var pitch = 1
var pip = 3


# Called when the node enters the scene tree for the first time.
func _ready():
	velocitat_bola.x = 500
	velocitat_bola.y = 0


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	print($".."/Contacte.pitch_scale)
	velocitat_maxima_y = time*(50/3)
	move_and_slide(velocitat_bola)
	if $".."/timer_ronda.time_left != 0:
		$".."/temps_ronda.text = str(int($".."/timer_ronda.time_left))
	


func _on_Area2D_body_entered(body):
	if body.is_in_group("paret"):
		velocitat_bola.y *= -1
	elif body.is_in_group("porteria"):
		$".."/Contacte.play()
		$".."/Contacte.pitch_scale = pitch
		velocitat_bola.x *= -1
		if velocitat_bola.y > velocitat_maxima_y:
			velocitat_bola.y = velocitat_maxima_y
		elif velocitat_bola.y < velocitat_maxima_y:
			var my_random_number = rng.randf_range(-500, 500)
			velocitat_bola.y +=  my_random_number


func _on_Timer_timeout():
	if pip != 0:
		$".."/Timer_ronda.play()
		pip-=1
	time += 1
	pitch += 0.01


func _on_timer_ronda_timeout():
	$".."/Pip_final.play()
	position = Vector2(963.683,515.359)
	$".."/temps_ronda.text = ""
	velocitat_bola.x = 500
	velocitat_bola.y = 0

func desapareixer():
	queue_free()
