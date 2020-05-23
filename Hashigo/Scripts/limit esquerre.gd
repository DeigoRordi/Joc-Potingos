extends Area2D
var marcador_blau = 0

func _process(delta):
	$".."/marcador_blau.text = str(marcador_blau)


func _on_limit_esquerre_body_entered(body):
	if body.name == "bola":
		marcador_blau += 1
		$".."/timer_ronda.start(4)
		
