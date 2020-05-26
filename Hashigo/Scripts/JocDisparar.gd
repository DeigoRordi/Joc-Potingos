extends Node2D


func _ready():
	pass 

func _process(delta):
	if get_node("PersonatgeBlau").vides_blau == 0:
		puntuacio_general.punts_general_vermell += 1
		get_node("temps guanyar").start()
		get_node("Guanyar").set_text("El Jugador Vermell ha guanyat")
		set_process((false))

	if get_node("PersonatgeVermell").vides_vermell == 0:
		puntuacio_general.punts_general_blau += 1
		get_node("temps guanyar").start()
		get_node("Guanyar").set_text("El Jugador Blau ha guanyat")
		set_process((false))
		
		




func _on_temps_guanyar_timeout():
	get_tree().change_scene("res://Escenes/Carrera.tscn")
