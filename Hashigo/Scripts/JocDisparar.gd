extends Node2D


func _ready():
	pass 

func _process(delta):
	if get_node("PersonatgeBlau").vides_blau == 0:
		puntuacio_general.punts_general_vermell += 1
		get_tree().change_scene("res://Escenes/Carrera.tscn")

	if get_node("PersonatgeVermell").vides_vermell == 0:
		puntuacio_general.punts_general_blau += 1
		get_tree().change_scene("res://Escenes/Carrera.tscn")
