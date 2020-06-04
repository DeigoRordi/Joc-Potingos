extends KinematicBody2D

var velocitat = Vector2.ZERO
var velocitat_maxima = 300
var gravetat = Vector2(0,1000)
var salt = Vector2(0, -700)
var vides_blau = 3

const BOLA = preload("res://Escenes/Bola.tscn")

func _process(delta):
	var moviment = mou(delta)
	anima(moviment)

func morir():
	vides_blau -= 1


func mou(delta):
	velocitat.x = 0
	if is_on_floor() or is_on_ceiling():
		velocitat.y = 0
	else:
		velocitat.y += gravetat.y * delta

	if Input.is_action_pressed("ui_right"):
		velocitat.x += velocitat_maxima
		if sign($Position2D.position.x) == -1:
			$Position2D.position.x *= -1
		
	if Input.is_action_pressed("ui_left"):
		velocitat.x += -velocitat_maxima
		if sign($Position2D.position.x) == 1:
			$Position2D.position.x *= -1
		
	if Input.is_action_pressed("ui_up") and is_on_floor():
		velocitat += salt
		
	if Input.is_action_just_pressed("enter"):
		$jugadorBlau.play()
		var bola = BOLA.instance()
		if sign($Position2D.position.x) == 1:
			bola.set_bola_direction(1)
		else:
			bola.set_bola_direction(-1)
		get_parent().add_child(bola)
		bola.position = $Position2D.global_position

	var moviment = move_and_slide(velocitat, Vector2.UP)
	return moviment




func anima(moviment):
	if velocitat.x < 0:
		$AnimatedSprite.flip_h = true
		$AnimatedSprite.play("Correr")
	elif velocitat.x > 0:
		$AnimatedSprite.flip_h = false
		$AnimatedSprite.play("Correr")
	if velocitat.x == 0:
		$AnimatedSprite.play("Quiet")



