extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass





func _on_carrera_pressed():
	get_tree().change_scene("res://Escenes/controls_carrera.tscn")


func _on_lava_pressed():
	get_tree().change_scene("res://Escenes/controls_lava.tscn")


func _on_disparar_pressed():
	get_tree().change_scene("res://Escenes/controls_disparar.tscn")


func _on_pong_pressed():
	get_tree().change_scene("res://Escenes/controlspong.tscn")


func _on_Button_pressed():
	get_tree().change_scene("res://Escenes/menu.tscn")
