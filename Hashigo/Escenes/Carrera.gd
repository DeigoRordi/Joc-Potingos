extends Node


func _ready():
	pass 

func _on_temps_guanyar_timeout():
	get_tree().change_scene("res://Escenes/Menu.tscn")
