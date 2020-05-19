extends Label


func _process(delta):
	set_text(str(get_parent().get_parent().get_parent().get_node("PersonatgeBlau").vides_blau))
