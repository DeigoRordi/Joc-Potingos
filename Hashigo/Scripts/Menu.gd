extends Node
var punts_general_blau = 0
var punts_general_vermell = 0


func _process(delta):
	pass


func _on_Jugar_pressed():
	get_tree().change_scene("res://Escenes/PONG.tscn")


func _on_Sortir_pressed():
	get_tree().quit()


func _on_Minijocs_pressed():
	get_tree().change_scene("res://Escenes/Minijocs.tscn")
	

