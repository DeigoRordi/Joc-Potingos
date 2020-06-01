extends Label


func _process(delta):
	set_text(str(int(get_parent().get_node("Timer Començar").time_left)))
	if get_parent().get_node("Timer Començar").time_left == 0:
		queue_free()
