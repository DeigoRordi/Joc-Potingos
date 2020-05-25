extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Area2D_body_entered(body):
	if body.name == "Jugador Blau":
		puntuacio_general.punts_general_blau += 1
	if body.name == "Jugador Vermell":
		puntuacio_general.punts_general_vermell += 1
	get_parent().get_node("Guanyar").set_text(str(body.name + "  es  el  guanyador"))
	get_parent().get_node("temps guanyar").start()
	queue_free()
	
	
