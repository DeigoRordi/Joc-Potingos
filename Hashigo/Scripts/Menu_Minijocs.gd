extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	print($Animacio.paused)


func _on_PONG_pressed():
	get_tree().change_scene("res://Escenes/PONG.tscn")


func _on_Joc_Disparar_pressed():
	get_tree().change_scene("res://Escenes/JocDisparar.tscn")


func _on_Carrera_pressed():
	get_tree().change_scene("res://Escenes/Carrera.tscn")


func _on_Menu_pressed():
	get_tree().change_scene("res://Escenes/Menu.tscn")
