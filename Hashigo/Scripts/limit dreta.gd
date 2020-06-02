extends Area2D
var marcador_vermell = 0



func _process(delta):
	$".."/marcador_vermell.text = str(marcador_vermell)


func _on_limit_dreta_body_entered(body):
	if body.name == "bola":
		marcador_vermell += 1
		if marcador_vermell < 3:
			$".."/timer_ronda.start(4)
			$".."/bola.pip = 4
