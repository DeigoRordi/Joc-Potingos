extends Node2D


func _ready():
	pass 

func _process(delta):
	if get_node("limit dreta").marcador_vermell == 3:
		puntuacio_general.punts_general_vermell +=1
		get_tree().change_scene("res://Escenes/JocDisparar.tscn")
		
	if get_node("limit esquerre").marcador_blau == 3:
		puntuacio_general.punts_general_blau +=1
		get_tree().change_scene("res://Escenes/JocDisparar.tscn")
		
