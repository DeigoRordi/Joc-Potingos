extends Node

func _process(delta):
	pass


func _on_Jugar_pressed():
	get_tree().change_scene("res://Escenes/2JUG.tscn")


func _on_Sortir_pressed():
	get_tree().quit()
