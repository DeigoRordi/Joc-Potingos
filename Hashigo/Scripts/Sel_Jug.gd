extends Node

#func _process(delta):
#	pass


func _on_1_pressed():
	get_tree().change_scene("res://Escenes/1JUG.tscn")


func _on_2_pressed():
	get_tree().change_scene("res://Escenes/2JUG.tscn")


func _on_Tornar_pressed():
	get_tree().change_scene("res://Escenes/Menu.tscn")
