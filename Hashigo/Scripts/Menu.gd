extends Node

func _process(delta):
	pass


func _on_Jugar_pressed():
	get_tree().change_scene("res://Escenes/2JUG.tscn")


func _on_Sortir_pressed():
	get_tree().quit()


func _on_Minijocs_pressed():
	get_tree().change_scene("res://Escenes/Minijocs.tscn")
	


func _on_Controls_pressed():
	get_tree().change_scene("res://Escenes/Controls.tscn")
