extends KinematicBody2D

var velocitat = Vector2.ZERO
var velocitat_maxima = 300
var gravetat = Vector2(0,1000)
var salt = Vector2(0, -700)
var vides_vermell = 3

func _process(delta):
	var moviment = mou(delta)
	anima(moviment)
func morir():
	vides_vermell -= 1

func mou(delta):
	velocitat.x = 0
	if is_on_floor() or is_on_ceiling():
		velocitat.y = -1
	else:
		velocitat.y += gravetat.y * delta

	if Input.is_action_pressed("ui_right2"):
		velocitat.x += velocitat_maxima

		
	if Input.is_action_pressed("ui_left2"):
		velocitat.x += -velocitat_maxima

		
	if Input.is_action_pressed("ui_up2") and is_on_floor():
		velocitat += salt

	var moviment = move_and_slide(velocitat, Vector2.UP)
	return moviment




func anima(moviment):
	if velocitat.x < 0:
		$AnimatedSprite.flip_h = true
		$AnimatedSprite.play("Correr")
	
	elif velocitat.x > 0:
		$AnimatedSprite.flip_h = false
		$AnimatedSprite.play("Correr")
	
	elif velocitat.x == 0:
		$AnimatedSprite.play("Quiet")




func _on_StaticBody2D_body_entered(body):
	if body.name == "PersonatgeVermell":
		puntuacio_general.punts_general_blau += 1
		get_parent().get_node("Timer").start()
		queue_free()




func _on_Timer_timeout():
	if puntuacio_general.punts_general_blau > puntuacio_general.punts_general_vermell:
		get_tree().change_scene("res://Escenes/Guanya Blau.tscn")
	if puntuacio_general.punts_general_blau < puntuacio_general.punts_general_vermell:
		get_tree().change_scene("res://Escenes/Guanya Vermell.tscn")
	if puntuacio_general.punts_general_blau == puntuacio_general.punts_general_vermell:
		get_tree().change_scene("res://Escenes/Empat.tscn")
