extends Node2D
var comensar = 0

func _ready():
	get_parent().get_node("Timer Començar").start()
	




func _on_Timer_Comenar_timeout():
	comensar = 1
