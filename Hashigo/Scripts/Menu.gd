extends Node

func _process(delta):
	pass


func _on_Jugar_pressed():
	get_tree().change_scene("res://Escenes/Sel_Jug.tscn")


func _on_Sortir_pressed():
	get_tree().quit()
