extends Label


func _process(delta):
	set_text(str(get_parent().get_parent().get_parent().get_node("PersonatgeVermell").vides_vermell))
