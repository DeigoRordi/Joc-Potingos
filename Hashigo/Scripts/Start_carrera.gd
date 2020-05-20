extends Label


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
		if $".."/Start.time_left <= 1:
			self.text = "START"
			print($".."/Temps_text.time_left)
		if $".."/Temps_text.time_left == 0:
			self.text = ""
			

func _on_Temps_text_timeout():
	self.text = ""


func _on_Start_timeout():
	$".."/Temps_text.start(1)
