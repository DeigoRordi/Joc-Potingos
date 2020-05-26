extends Node2D


func _ready():
	pass 

func _process(delta):
	if get_node("limit dreta").marcador_vermell == 3:
		puntuacio_general.punts_general_vermell +=1

		get_node("temps_ronda").visible = false
		get_node("bola").visible = false
		get_node("Guanyar").set_text("El Jugador Vermell ha guanyat")
		get_node("temps guanyar").start()
		set_process((false))
		
	if get_node("limit esquerre").marcador_blau == 3:
		puntuacio_general.punts_general_blau +=1

		get_node("temps_ronda").visible = false
		get_node("bola").visible = false
		get_node("Guanyar").set_text("El Jugador Blau ha guanyat")
		get_node("temps guanyar").start()
		set_process((false))
		


func _on_temps_guanyar_timeout():
	get_tree().change_scene("res://Escenes/JocDisparar.tscn")
	
