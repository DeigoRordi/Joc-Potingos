extends Label


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if $".."/Start.time_left > 1:
		self.text = str(int($".."/Start.time_left))
	else:
		self.text = ""



func _on_Timer_timeout():
	self.text = ""
